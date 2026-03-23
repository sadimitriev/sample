import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: SecureStorageOptions._getAndroidOptions(),
  );

  Future<void> setValue(SecureStorageKeys key, String value) async {
    await _storage.write(key: key.name, value: value);
  }

  Future<String?> getValue(SecureStorageKeys key) async {
    return await _storage.read(key: key.name);
  }
}

enum SecureStorageKeys {
  sessionId("sessionId"),
  userlogin("userlogin"),
  serverAddress("serverAddress"),
  tasksLastUpdateDate("tasksLastUpdateDate"),
  registriesLasUpdateDate('registriesLastUpdateDate');

  const SecureStorageKeys(this.name);
  final String name;
}

class SecureStorageOptions {
  static AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);
}
