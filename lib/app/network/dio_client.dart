import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart' as dio_cookie;
import 'package:sample/app/network/interceptors/interceptors.dart';
import 'package:path_provider/path_provider.dart';

class DioClient {
  static late final Dio dio;
  static late final CookieJar cookieJar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    cookieJar = PersistCookieJar(
      storage: FileStorage('${dir.path}/.cookies/'),
    );
    dio = _createDio();
  }

  static Dio _createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: "https://intourist.ru/client/rs-api/v1",
        sendTimeout: Duration(seconds: 3),
        connectTimeout: Duration(seconds: 3),
        headers: {"Accept": "*/*"},
        responseType: ResponseType.json,
        contentType: ContentType.json.toString(),
      ),
    )..interceptors.addAll([
      ConnectivityInterceptor(),
      ResponseInterceptor(),
      LogInterceptor(requestBody: true, responseBody: true, requestHeader: true),
      dio_cookie.CookieManager(cookieJar),
    ]);

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.findProxy = (url) => 'DIRECT';
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    };

    return dio;
  }

  static Future<List<Cookie>> getCookiesForUrl(String url) async {
    try {
      final uri = Uri.parse(url);
      final cookies = await cookieJar.loadForRequest(uri);
      return cookies;
    } catch (e) {
      print('Error loading cookies: $e');
      return [];
    }
  }

  static Future<List<Cookie>> getCookiesStringForUrl(String url) async {
    final cookies = await getCookiesForUrl(url);
    return cookies;
  }
}
