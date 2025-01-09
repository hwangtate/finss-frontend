import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/common/color_palette.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.localizations,
    required this.labelText,
    this.isPasswordField = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
  });

  final AppLocalizations localizations;
  final String labelText;
  final bool isPasswordField;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: ColorPalette.lightBlack1,
          fontSize: 16,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPalette.lightBlack1,
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPalette.primaryGreen,
            width: 2.0,
          ),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: ColorPalette.lightBlack2,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : null,
      ),
      cursorColor: ColorPalette.lightBlack1,
      cursorHeight: 18,
      cursorWidth: 1.5,
      obscureText:
          widget.isPasswordField ? !_isPasswordVisible : widget.obscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    required this.localizations,
  });

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      localizations: localizations,
      labelText: localizations.emailLabel,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.localizations,
  });

  final AppLocalizations localizations;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      localizations: localizations,
      labelText: localizations.passwordLabel,
      isPasswordField: true,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
  }
}
