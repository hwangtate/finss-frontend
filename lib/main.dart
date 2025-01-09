import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/app/auth/views/login_view.dart';
import 'package:flutter_template/resources/theme/theme.dart';

void main() {
  runApp(const FinssApp());
}

class FinssApp extends StatelessWidget {
  const FinssApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FInSs',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ko'),
      ],
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginView(),
    );
  }
}
