import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

List<LocalizationsDelegate> localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

List<Locale> supportedLocales = [
  const Locale('en', ''), // English, no country code
  const Locale('es', ''), // Spanish, no country code
  const Locale.fromSubtags(
      languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
  const Locale.fromSubtags(
      languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN')
];
