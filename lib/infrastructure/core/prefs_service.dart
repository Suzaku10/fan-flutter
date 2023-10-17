import 'package:fan_flutter/domain/constant/app_keys.dart';
import 'package:fan_flutter/domain/interface/i_prefs_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IPrefsService)
class PrefsService implements IPrefsService {
  final SharedPreferences _preferences;

  PrefsService(this._preferences);

  @override
  bool isLoggedIn() => _preferences.getBool(AppKeys.loggedInKey) ?? false;

  @override
  Future<void> saveLoggedInStatus(bool isLoggedIn) async => await _preferences.setBool(AppKeys.loggedInKey, isLoggedIn);
}