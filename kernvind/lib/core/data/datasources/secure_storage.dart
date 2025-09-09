import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

abstract interface class SecureStorage {
  Future<Either<FailureError, String?>> getValue({required String key});
  Future<Either<FailureError, String>> storeValue(
      {required String key, required String value});
  Future<Either<FailureError, String>> deleteKey({required String key});
  Future<Either<FailureError, String>> deleteAll();
}

class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage storage;

  SecureStorageImpl({required this.storage});

  @override
  Future<Either<FailureError, String>> deleteAll() async {
    try {
      await storage.deleteAll();
      return right("All keys deleted");
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, String>> deleteKey({required String key}) async {
    try {
      await storage.delete(key: key);
      return right("$key deleted");
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, String?>> getValue({required String key}) async {
    try {
      final value = await storage.read(key: key);
      return right(value);
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, String>> storeValue(
      {required String key, required String value}) async {
    try {
      await storage.write(key: key, value: value);
      return right("$value stored successfully");
    } catch (e) {
      return left(FailureError());
    }
  }
}
