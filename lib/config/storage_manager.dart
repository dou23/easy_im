
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions _getAndroidOptions() => const AndroidOptions(
  encryptedSharedPreferences: true,
);
final flutterSecureStorage = FlutterSecureStorage(aOptions: _getAndroidOptions());

// Create storage
const storage = FlutterSecureStorage();