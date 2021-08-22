import 'package:gea/services/abstract/storage_base.dart';
import 'dart:html';

class StorageLocal implements StorageBase {
  late Storage _storage = window.localStorage;

  get(String key) {
    return _storage[key];
  }

  set(String key, String value) {
    _storage[key] = value;
  }
}