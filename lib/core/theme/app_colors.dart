import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryColor = Color(0xFF2563EB); // Blue 600
  static const Color primaryLightColor = Color(0xFF3B82F6); // Blue 500
  static const Color primaryDarkColor = Color(0xFF1D4ED8); // Blue 700

  // Secondary Colors
  static const Color secondaryColor = Color(0xFF059669); // Emerald 600
  static const Color secondaryLightColor = Color(0xFF10B981); // Emerald 500
  static const Color secondaryDarkColor = Color(0xFF047857); // Emerald 700

  // Background Colors
  static const Color backgroundColor = Color(0xFFF8FAFC); // Slate 50
  static const Color surfaceColor = Color(0xFFFFFFFF); // White
  static const Color cardColor = Color(0xFFFFFFFF); // White

  // Dark Theme Background Colors
  static const Color darkBackgroundColor = Color(0xFF0F172A); // Slate 900
  static const Color darkSurfaceColor = Color(0xFF1E293B); // Slate 800
  static const Color darkCardColor = Color(0xFF334155); // Slate 700

  // Text Colors
  static const Color textPrimaryColor = Color(0xFF0F172A); // Slate 900
  static const Color textSecondaryColor = Color(0xFF64748B); // Slate 500
  static const Color textTertiaryColor = Color(0xFF94A3B8); // Slate 400

  // Dark Theme Text Colors
  static const Color darkTextPrimaryColor = Color(0xFFF8FAFC); // Slate 50
  static const Color darkTextSecondaryColor = Color(0xFFCBD5E1); // Slate 300
  static const Color darkTextTertiaryColor = Color(0xFF94A3B8); // Slate 400

  // Status Colors
  static const Color successColor = Color(0xFF059669); // Emerald 600
  static const Color warningColor = Color(0xFFD97706); // Amber 600
  static const Color errorColor = Color(0xFFDC2626); // Red 600
  static const Color infoColor = Color(0xFF2563EB); // Blue 600

  // Border Colors
  static const Color borderColor = Color(0xFFE2E8F0); // Slate 200
  static const Color darkBorderColor = Color(0xFF475569); // Slate 600

  // Specific Use Colors
  static const Color disabledColor = Color(0xFF94A3B8); // Slate 400
  static const Color shadowColor = Color(0x1A000000); // Black with 10% opacity
  static const Color overlayColor = Color(0x80000000); // Black with 50% opacity

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryLightColor,
      primaryColor,
      primaryDarkColor,
    ],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      secondaryLightColor,
      secondaryColor,
      secondaryDarkColor,
    ],
  );

  // Chart Colors
  static const List<Color> chartColors = [
    primaryColor,
    secondaryColor,
    warningColor,
    errorColor,
    infoColor,
    Color(0xFF8B5CF6), // Violet 500
    Color(0xFFEC4899), // Pink 500
    Color(0xFF06B6D4), // Cyan 500
  ];

  // Status Background Colors (with opacity)
  static Color get successBackgroundColor =>
      successColor.withValues(alpha: 0.1);
  static Color get warningBackgroundColor =>
      warningColor.withValues(alpha: 0.1);
  static Color get errorBackgroundColor => errorColor.withValues(alpha: 0.1);
  static Color get infoBackgroundColor => infoColor.withValues(alpha: 0.1);

  // Specific Feature Colors
  static const Color responsavelColor = Color(0xFF3B82F6); // Blue 500
  static const Color membroColor = Color(0xFF10B981); // Emerald 500
  static const Color demandaSaudeColor = Color(0xFFDC2626); // Red 600
  static const Color demandaEducacaoColor = Color(0xFF8B5CF6); // Violet 500
  static const Color demandaHabitacaoColor = Color(0xFFD97706); // Amber 600
  static const Color demandaAmbienteColor = Color(0xFF059669); // Emerald 600
  static const Color demandaInternaColor = Color(0xFF6366F1); // Indigo 500
}
