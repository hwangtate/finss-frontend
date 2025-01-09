import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/common/color_palette.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.localizations,
  });

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Login button pressed');
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        backgroundColor: ColorPalette.primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        localizations.loginButtonText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool showDivider;

  const LinkButton({
    required this.text,
    required this.onPressed,
    this.showDivider = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        if (showDivider) ...[
          const SizedBox(width: 8),
          const Text(
            '|',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(width: 8),
        ],
      ],
    );
  }
}

class EPSTextButton extends StatelessWidget {
  const EPSTextButton({
    super.key,
    required this.localizations,
  });

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LinkButton(
          text: localizations.findEmail,
          onPressed: () {
            Navigator.pushNamed(context, '/find-email');
          },
          showDivider: true,
        ),
        LinkButton(
          text: localizations.findPassword,
          onPressed: () {
            Navigator.pushNamed(context, '/find-password');
          },
          showDivider: true,
        ),
        LinkButton(
          text: localizations.signUp,
          onPressed: () {
            Navigator.pushNamed(context, '/sign-up');
          },
        ),
      ],
    );
  }
}
