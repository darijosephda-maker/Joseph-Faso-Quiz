import 'package:flutter/material.dart';

/// Gestion globale du thème sombre/clair.
/// Utiliser AppTheme.mode pour écouter, AppTheme.toggle() pour basculer.
class AppTheme {
  AppTheme._();

  static final ValueNotifier<ThemeMode> mode =
      ValueNotifier<ThemeMode>(ThemeMode.light);

  static bool get isDark => mode.value == ThemeMode.dark;

  static void setDark(bool dark) {
    mode.value = dark ? ThemeMode.dark : ThemeMode.light;
  }

  static void toggle() {
    mode.value =
        mode.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
