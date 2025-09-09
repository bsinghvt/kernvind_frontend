import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:kernvind/core/data/datasources/secure_storage.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@riverpod
FlutterSecureStorage flutterSecureStorage(Ref ref) {
  return const FlutterSecureStorage();
}

@riverpod
SecureStorageImpl secureStorage(Ref ref) {
  return SecureStorageImpl(storage: ref.watch(flutterSecureStorageProvider));
}
