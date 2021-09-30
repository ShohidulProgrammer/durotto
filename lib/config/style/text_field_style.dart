import 'package:durotto/config/style/color_constants.dart';
import 'package:durotto/config/style/text_style.dart';
import 'package:flutter/material.dart';

class TextFieldStyle {
  static InputDecoration roundField({
    String? hintText = "",
    String? labelText = "",
    String? errorMsg,
    Icon? prefixIcon,
    Icon? suffixIcon,
    VoidCallback? onTapSuffixIcon,
    double borderRadius = 8.0,
  }) {
    return InputDecoration(
      labelText: labelText,
      // labelStyle: const TextStyle(color: Colors.blueGrey),
      // errorMaxLines: 5,
      hintText: hintText,
      errorText: errorMsg,
      errorStyle:
          kMidSmallTextStyle.copyWith(color: ColorConstants.accentColor),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon != null
          ? IconButton(
              icon: suffixIcon,
              onPressed: onTapSuffixIcon,
            )
          : null,

      filled: true,

      /// all the styles are already defined in theme domain
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: ColorConstants.primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          width: 2,
          color: ColorConstants.primaryColor,
        ),
      ),
    );
  }
}
