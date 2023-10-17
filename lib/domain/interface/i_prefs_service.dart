abstract interface class IPrefsService {
  bool isLoggedIn();
  Future<void> saveLoggedInStatus(bool isLoggedIn);
}