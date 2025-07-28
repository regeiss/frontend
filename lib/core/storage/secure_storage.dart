import 'package:shared_preferences/shared_preferences.dart';
import '../config/logging/app_logger.dart';

class SecureStorage {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _userIdKey = 'user_id';
  static const String _usernameKey = 'username';
  static const String _emailKey = 'email';
  static const String _firstNameKey = 'first_name';
  static const String _lastNameKey = 'last_name';
  static const String _isFirstLaunchKey = 'is_first_launch';
  static const String _isDarkModeKey = 'is_dark_mode';
  static const String _languageKey = 'language';

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<SharedPreferences> get _instance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  // Token Management
  static Future<void> saveAccessToken(String token) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_accessTokenKey, token);
      AppLogger.debug('Access token saved');
    } catch (e) {
      AppLogger.error('Failed to save access token', e);
    }
  }

  static Future<String?> getAccessToken() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_accessTokenKey);
    } catch (e) {
      AppLogger.error('Failed to get access token', e);
      return null;
    }
  }

  static Future<void> saveRefreshToken(String token) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_refreshTokenKey, token);
      AppLogger.debug('Refresh token saved');
    } catch (e) {
      AppLogger.error('Failed to save refresh token', e);
    }
  }

  static Future<String?> getRefreshToken() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_refreshTokenKey);
    } catch (e) {
      AppLogger.error('Failed to get refresh token', e);
      return null;
    }
  }

  static Future<void> clearTokens() async {
    try {
      final prefs = await _instance;
      await prefs.remove(_accessTokenKey);
      await prefs.remove(_refreshTokenKey);
      AppLogger.info('Tokens cleared');
    } catch (e) {
      AppLogger.error('Failed to clear tokens', e);
    }
  }

  // User Data
  static Future<void> saveUserId(int userId) async {
    try {
      final prefs = await _instance;
      await prefs.setInt(_userIdKey, userId);
    } catch (e) {
      AppLogger.error('Failed to save user ID', e);
    }
  }

  static Future<int?> getUserId() async {
    try {
      final prefs = await _instance;
      return prefs.getInt(_userIdKey);
    } catch (e) {
      AppLogger.error('Failed to get user ID', e);
      return null;
    }
  }

  static Future<void> saveUsername(String username) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_usernameKey, username);
    } catch (e) {
      AppLogger.error('Failed to save username', e);
    }
  }

  static Future<String?> getUsername() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_usernameKey);
    } catch (e) {
      AppLogger.error('Failed to get username', e);
      return null;
    }
  }

  static Future<void> saveEmail(String email) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_emailKey, email);
    } catch (e) {
      AppLogger.error('Failed to save email', e);
    }
  }

  static Future<String?> getEmail() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_emailKey);
    } catch (e) {
      AppLogger.error('Failed to get email', e);
      return null;
    }
  }

  static Future<void> saveFirstName(String firstName) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_firstNameKey, firstName);
    } catch (e) {
      AppLogger.error('Failed to save first name', e);
    }
  }

  static Future<String?> getFirstName() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_firstNameKey);
    } catch (e) {
      AppLogger.error('Failed to get first name', e);
      return null;
    }
  }

  static Future<void> saveLastName(String lastName) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_lastNameKey, lastName);
    } catch (e) {
      AppLogger.error('Failed to save last name', e);
    }
  }

  static Future<String?> getLastName() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_lastNameKey);
    } catch (e) {
      AppLogger.error('Failed to get last name', e);
      return null;
    }
  }

  // App Settings
  static Future<void> setFirstLaunch(bool isFirstLaunch) async {
    try {
      final prefs = await _instance;
      await prefs.setBool(_isFirstLaunchKey, isFirstLaunch);
    } catch (e) {
      AppLogger.error('Failed to set first launch', e);
    }
  }

  static Future<bool> isFirstLaunch() async {
    try {
      final prefs = await _instance;
      return prefs.getBool(_isFirstLaunchKey) ?? true;
    } catch (e) {
      AppLogger.error('Failed to get first launch status', e);
      return true;
    }
  }

  static Future<void> setDarkMode(bool isDarkMode) async {
    try {
      final prefs = await _instance;
      await prefs.setBool(_isDarkModeKey, isDarkMode);
    } catch (e) {
      AppLogger.error('Failed to set dark mode', e);
    }
  }

  static Future<bool?> isDarkMode() async {
    try {
      final prefs = await _instance;
      return prefs.getBool(_isDarkModeKey);
    } catch (e) {
      AppLogger.error('Failed to get dark mode status', e);
      return null;
    }
  }

  static Future<void> setLanguage(String language) async {
    try {
      final prefs = await _instance;
      await prefs.setString(_languageKey, language);
    } catch (e) {
      AppLogger.error('Failed to set language', e);
    }
  }

  static Future<String?> getLanguage() async {
    try {
      final prefs = await _instance;
      return prefs.getString(_languageKey);
    } catch (e) {
      AppLogger.error('Failed to get language', e);
      return null;
    }
  }

  // Clear all data
  static Future<void> clearAll() async {
    try {
      final prefs = await _instance;
      await prefs.clear();
      AppLogger.info('All storage data cleared');
    } catch (e) {
      AppLogger.error('Failed to clear all data', e);
    }
  }

  // Check if user is logged in
  static Future<bool> isLoggedIn() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}