import 'package:flutter/widgets.dart';

class AppLanguage {
  static final ValueNotifier<Locale> locale = ValueNotifier(
    const Locale('fr', 'BF'),
  );

  static void setLocale(Locale l) => locale.value = l;
}
