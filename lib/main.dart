import 'package:flutter/material.dart';
import 'package:flutter_template/theme/theme.dart';

void main() {
  runApp(const FinssApp());
}

class FinssApp extends StatelessWidget {
  const FinssApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
