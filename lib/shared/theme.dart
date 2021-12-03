
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const secondary = Color(0xFF3B76F6);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color(0xFF53585A);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighLight = secondary;
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF303334);
}

class LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

class DarkColors {
  static const background = Color(0xFF1B1E1F);
  static const card = AppColors.cardDark;
}

class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  static ThemeData light() => ThemeData(
      brightness: Brightness.light,
      accentColor: accentColor,
      visualDensity: visualDensity,
      textTheme:
          GoogleFonts.mulishTextTheme().apply(bodyColor: AppColors.textDark),
      backgroundColor: LightColors.background,
      scaffoldBackgroundColor: LightColors.card,
      cardColor: LightColors.card,
      primaryTextTheme:
          const TextTheme(headline6: TextStyle(color: AppColors.textDark)),
      iconTheme: const IconThemeData(color: AppColors.iconDark));

  static ThemeData dark() => ThemeData(
      brightness: Brightness.light,
      accentColor: accentColor,
      visualDensity: visualDensity,
      textTheme: GoogleFonts.interTextTheme()
          .apply(bodyColor: AppColors.textLigth),
      backgroundColor: DarkColors.background,
      scaffoldBackgroundColor: DarkColors.card,
      cardColor: DarkColors.card,
      primaryTextTheme:
          const TextTheme(headline6: TextStyle(color: AppColors.textLigth)),
      iconTheme: const IconThemeData(color: AppColors.iconLight));
}
