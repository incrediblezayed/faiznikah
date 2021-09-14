import 'package:faiznikah/src/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDataHelper {
  final String _user = "user";
  final String _token = "token";
  final String _userBoxName = "userbox";
  final String _stringBoxName = "stringbox";
  late Box<String> _stringBox;
  late Box<User> _userBox;

  ///Init local storage
  Future<void> init() async {
    await Hive.initFlutter();
    registerAdapter<User>(0, UserAdapter());
    _stringBox = await initBox<String>(_stringBoxName);
    _userBox = await initBox<User>(_userBoxName);
  }

  ///Register adapter for custom user types
  void registerAdapter<T>(int typeId, TypeAdapter<T> type) {
    bool isTypeRegistered = Hive.isAdapterRegistered(typeId);
    if (!isTypeRegistered) {
      Hive.registerAdapter<T>(type);
    }
  }

  ///Initalize the local storage for each specific type
  Future<Box<T>> initBox<T>(String boxName) async {
    bool isBoxOpen = Hive.isBoxOpen(boxName);
    if (!isBoxOpen) {
      await Hive.openBox<T>(boxName);
    }
    return Hive.box<T>(boxName);
  }

  String? getToken() {
    return _stringBox.get(_token);
  }

  bool isLoggedIn() {
    return getToken() != null;
  }

  Future<void> setToken(String token) async {
    await _stringBox.put(_token, token);
  }

  User? getUser() {
    return _userBox.get(_user);
  }

  Future<void> setUser(User user) async {
    await _userBox.put(_user, user);
  }
}
