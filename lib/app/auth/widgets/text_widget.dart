import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/common/color_palette.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({
    super.key,
    required this.localizations,
  });

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return Text(
      localizations.loginTitle,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: ColorPalette.lightBlack2),
    );
  }
}
