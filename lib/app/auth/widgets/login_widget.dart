import 'package:flutter/material.dart';

class LoginTitleImage extends StatelessWidget {
  const LoginTitleImage({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isDarkMode
          ? 'assets/images/splash/dark_splash.png'
          : 'assets/images/splash/light_splash.png',
      height: 60,
      width: 148,
    );
  }
}
