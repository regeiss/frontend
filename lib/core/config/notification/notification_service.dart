import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../theme/app_colors.dart';
import '../logging/app_logger.dart';

enum NotificationType {
  success,
  error,
  warning,
  info,
}

class NotificationService {
  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) {
      return;
    }

    // Initialize toast configuration
    // Note: Fluttertoast.cancel() is not supported on web platform
    if (!kIsWeb) {
      try {
        await Fluttertoast.cancel();
      } catch (e) {
        AppLogger.info('Fluttertoast.cancel() not available on this platform');
      }
    }

    _initialized = true;
    AppLogger.info('NotificationService initialized');
  }

  // Toast Notifications
  static Future<void> showToast(
    String message, {
    NotificationType type = NotificationType.info,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int timeInSecForIosWeb = 3,
  }) async {
    if (!_initialized) {
      await initialize();
    }

    final backgroundColor = _getBackgroundColor(type);
    final textColor = _getTextColor(type);

    try {
      await Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: gravity,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: 16,
      );

      AppLogger.info('Toast shown: $message (Type: $type)');
    } catch (e) {
      // Fallback for web platform issues
      AppLogger.warning('Toast failed, using fallback: $e');
      // You could implement a web-specific toast here if needed
    }
  }

  static Future<void> showSuccess(String message) async {
    await showToast(message, type: NotificationType.success);
  }

  static Future<void> showError(String message) async {
    await showToast(message, type: NotificationType.error);
    AppLogger.error('Error notification: $message');
  }

  static Future<void> showWarning(String message) async {
    await showToast(message, type: NotificationType.warning);
  }

  static Future<void> showInfo(String message) async {
    await showToast(message, type: NotificationType.info);
  }

  // Snackbar Notifications (requires BuildContext)
  static void showSnackbar(
    BuildContext context,
    String message, {
    NotificationType type = NotificationType.info,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    final backgroundColor = _getBackgroundColor(type);
    final textColor = _getTextColor(type);
    final iconData = _getIconData(type);

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(iconData, color: textColor),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        action: actionLabel != null && onActionPressed != null
            ? SnackBarAction(
                label: actionLabel,
                textColor: textColor,
                onPressed: onActionPressed,
              )
            : null,
      ),
    );

    AppLogger.info('Snackbar shown: $message (Type: $type)');
  }

  static void showSuccessSnackbar(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    showSnackbar(
      context,
      message,
      type: NotificationType.success,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  static void showErrorSnackbar(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    showSnackbar(
      context,
      message,
      type: NotificationType.error,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
    AppLogger.error('Error snackbar: $message');
  }

  static void showWarningSnackbar(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    showSnackbar(
      context,
      message,
      type: NotificationType.warning,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  static void showInfoSnackbar(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onActionPressed,
  }) {
    showSnackbar(
      context,
      message,
      type: NotificationType.info,
      actionLabel: actionLabel,
      onActionPressed: onActionPressed,
    );
  }

  // Dialog Notifications
  static Future<bool?> showConfirmDialog(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'Confirmar',
    String cancelText = 'Cancelar',
    NotificationType type = NotificationType.warning,
  }) async {
    final iconData = _getIconData(type);
    final iconColor = _getBackgroundColor(type);

    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(iconData, color: iconColor, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        content: Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: iconColor,
              foregroundColor: Colors.white,
            ),
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  static Future<void> showAlertDialog(
    BuildContext context, {
    required String title,
    required String message,
    String buttonText = 'OK',
    NotificationType type = NotificationType.info,
  }) async {
    final iconData = _getIconData(type);
    final iconColor = _getBackgroundColor(type);

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(iconData, color: iconColor, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        content: Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              backgroundColor: iconColor,
              foregroundColor: Colors.white,
            ),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }

  // Helper methods
  static Color _getBackgroundColor(NotificationType type) {
    switch (type) {
      case NotificationType.success:
        return AppColors.successColor;
      case NotificationType.error:
        return AppColors.errorColor;
      case NotificationType.warning:
        return AppColors.warningColor;
      case NotificationType.info:
        return AppColors.infoColor;
    }
  }

  static Color _getTextColor(NotificationType type) => Colors.white;

  static IconData _getIconData(NotificationType type) {
    switch (type) {
      case NotificationType.success:
        return Icons.check_circle;
      case NotificationType.error:
        return Icons.error;
      case NotificationType.warning:
        return Icons.warning;
      case NotificationType.info:
        return Icons.info;
    }
  }

  // Loading Dialog
  static void showLoadingDialog(
    BuildContext context, {
    String message = 'Carregando...',
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              message,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  static void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
