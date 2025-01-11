import 'package:flutter/material.dart';
import 'package:flutter_template/common/color_palette.dart';

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

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(width: 8);

    const expanded = Expanded(child: Divider());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        expanded,
        sizedBox,
        Text(
          "또는",
          style: TextStyle(color: ColorPalette.lightBlack2),
        ),
        sizedBox,
        expanded,
      ],
    );
  }
}
