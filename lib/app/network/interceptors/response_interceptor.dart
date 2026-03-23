import 'dart:convert';

import 'package:dio/dio.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Если приходит строка - преобразуем в Map
    if (response.data != null && response.data is String){
      response.data = jsonDecode(response.data);
      // Если в строке были escape символы, то после первого декода значение останется в виде строки, 
      // но уже без них. В этом случае ещё раз декодим значение
      if (response.data is String){
        response.data = jsonDecode(response.data);
      }
    }
    super.onResponse(response, handler);
  }
}