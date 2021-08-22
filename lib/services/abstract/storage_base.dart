abstract class StorageBase {

  StorageBase(String key);

  String? get(String key);
  void set(String key, String value);
}