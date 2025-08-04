import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformConfig {
  static bool get isMobile => !kIsWeb && (Platform.isIOS || Platform.isAndroid);
  static bool get isWeb => kIsWeb;
  static bool get isDesktop => !kIsWeb && (Platform.isWindows || Platform.isMacOS || Platform.isLinux);
  
  // Controle de features por plataforma
  static bool get shouldUseStateManagement => isMobile;
  static bool get shouldUsePersistence => isMobile;
  static bool get shouldUseNotifications => isMobile;
  static bool get shouldUseBiometrics => isMobile;
  static bool get shouldUseDeepLinking => isMobile || isWeb;
}