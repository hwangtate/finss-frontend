import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/app/auth/widgets/input_widget.dart';
import 'package:flutter_template/app/auth/widgets/login_button_widget.dart';
import 'package:flutter_template/app/auth/widgets/login_widget.dart';
import 'package:flutter_template/app/auth/widgets/text_widget.dart';
import 'package:flutter_template/common/color_palette.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginTitleImage(isDarkMode: isDarkMode),
            LoginTitleText(localizations: localizations),
            const SizedBox(height: 25),
            EmailInput(localizations: localizations),
            const SizedBox(height: 12),
            PasswordInput(localizations: localizations),
            const SizedBox(height: 12),
            LoginButton(localizations: localizations),
            const SizedBox(height: 25),
            EPSTextButton(localizations: localizations),
            const SizedBox(height: 25),
            const OrWidget(),
            const SizedBox(height: 25),
            const KakaoLoginButton(),
            const SizedBox(height: 12),
            const GoogleLoginButton(),
          ],
        ),
      ),
    );
  }
}
