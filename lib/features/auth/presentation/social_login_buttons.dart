import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../core/config/notification/notification_service.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          // Google Login Button
          _buildSocialButton(
            onPressed: _handleGoogleLogin,
            icon: Icons.g_mobiledata,
            label: 'Continuar com Google',
            backgroundColor: Colors.white,
            textColor: AppColors.textPrimaryColor,
            borderColor: AppColors.borderColor,
          ),

          const SizedBox(height: 12),

          // Microsoft Login Button
          _buildSocialButton(
            onPressed: _handleMicrosoftLogin,
            icon: Icons.business,
            label: 'Continuar com Microsoft',
            backgroundColor: const Color(0xFF0078D4),
            textColor: Colors.white,
          ),
        ],
      );

  Widget _buildSocialButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required Color backgroundColor,
    required Color textColor,
    Color? borderColor,
  }) =>
      SizedBox(
        width: double.infinity,
        height: 56,
        child: OutlinedButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: textColor,
            size: 20,
          ),
          label: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: BorderSide(
              color: borderColor ?? backgroundColor,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      );

  void _handleGoogleLogin() {
    // TODO(robertogeiss): Implement Google login
    NotificationService.showInfo('Login com Google em desenvolvimento');
  }

  void _handleMicrosoftLogin() {
    // TODO(robertogeiss): Implement Microsoft login
    NotificationService.showInfo('Login com Microsoft em desenvolvimento');
  }
}
