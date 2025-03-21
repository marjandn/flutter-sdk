import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class FluoTheme {
  factory FluoTheme({
    required Color primaryColor,
    required Color inversePrimaryColor,
    EdgeInsets? screenPadding,
    ButtonStyle? connectButtonStyle,
    TextStyle? connectButtonTextStyle,
    TextStyle? legalTextStyle,
    EdgeInsets? legalTextPadding,
    TextStyle? modalTitleTextStyle,
    TextStyle? titleStyle,
    InputDecoration? inputDecoration,
    TextStyle? inputTextStyle,
    TextStyle? inputErrorStyle,
    TextAlignVertical? inputTextAlignVertical,
    ButtonStyle? nextButtonStyle,
    Size? nextButtonProgressIndicatorSize,
    Color? nextButtonProgressIndicatorColor,
    double? nextButtonProgressIndicatorStrokeWidth,
    PinTheme? codeInputThemeDefault,
    PinTheme? codeInputThemeFocused,
    PinTheme? codeInputThemeSubmitted,
    PinTheme? codeInputThemeFollowing,
    PinTheme? codeInputThemeDisabled,
    PinTheme? codeInputThemeError,
  }) {
    screenPadding ??= const EdgeInsets.all(20.0);

    connectButtonStyle ??= TextButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      minimumSize: const Size.fromHeight(54),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 1.5,
        ),
      ),
    );

    connectButtonTextStyle ??= TextStyle(
      fontSize: 18,
      color: primaryColor,
      fontWeight: FontWeight.w700,
    );

    legalTextStyle ??= TextStyle(
      fontSize: 14,
      color: primaryColor.withAlpha((255 * 0.6).toInt()),
    );

    legalTextPadding ??= const EdgeInsets.only(
      top: 30.0,
      right: 50.0,
      left: 50.0,
    );

    modalTitleTextStyle ??= TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: primaryColor,
      letterSpacing: -0.4,
    );

    titleStyle ??= TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: primaryColor,
      letterSpacing: -0.4,
    );

    inputDecoration ??= InputDecoration(
      fillColor: inversePrimaryColor.withAlpha(255 ~/ 2),
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 15.0,
      ),
      hintStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: primaryColor.withAlpha(255 ~/ 3), // THEME
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      suffixIconConstraints: const BoxConstraints(
        maxHeight: 32,
        maxWidth: 32 + 10 + 15,
      ),
    );

    inputTextStyle ??= const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
    );

    inputErrorStyle ??= TextStyle(
      fontSize: 15,
      color: Colors.red.shade500,
      letterSpacing: -0.41,
    );

    inputTextAlignVertical ??= TextAlignVertical.center;

    nextButtonStyle ??= TextButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      minimumSize: const Size.fromHeight(54),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );

    nextButtonProgressIndicatorSize ??= const Size(16.0, 16.0);

    nextButtonProgressIndicatorColor ??= inversePrimaryColor;

    nextButtonProgressIndicatorStrokeWidth ??= 2.0;

    codeInputThemeDefault ??= PinTheme(
      width: 54.0,
      height: 64.0,
      textStyle: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );

    codeInputThemeFocused ??= codeInputThemeDefault.copyDecorationWith(
      border: Border.all(
        width: 2,
        color: primaryColor,
      ),
    );

    codeInputThemeFollowing ??= codeInputThemeDefault.copyDecorationWith(
      border: Border.all(
        width: 1.5,
        color: primaryColor,
      ),
    );

    return FluoTheme._(
      primaryColor,
      inversePrimaryColor,
      screenPadding,
      connectButtonStyle,
      connectButtonTextStyle,
      legalTextStyle,
      legalTextPadding,
      modalTitleTextStyle,
      titleStyle,
      inputDecoration,
      inputTextStyle,
      inputErrorStyle,
      inputTextAlignVertical,
      nextButtonStyle,
      nextButtonProgressIndicatorSize,
      nextButtonProgressIndicatorColor,
      nextButtonProgressIndicatorStrokeWidth,
      codeInputThemeDefault,
      codeInputThemeFocused,
      codeInputThemeSubmitted,
      codeInputThemeFollowing,
      codeInputThemeDisabled,
      codeInputThemeError,
    );
  }

  factory FluoTheme.light() {
    return FluoTheme(
      primaryColor: Colors.black,
      inversePrimaryColor: Colors.white,
    );
  }

  factory FluoTheme.dark() {
    return FluoTheme(
      primaryColor: Colors.white,
      inversePrimaryColor: Colors.black87,
    );
  }

  const FluoTheme._(
    this.primaryColor,
    this.inversePrimaryColor,
    this.screenPadding,
    this.connectButtonStyle,
    this.connectButtonTextStyle,
    this.legalTextStyle,
    this.legalTextPadding,
    this.modalTitleTextStyle,
    this.titleStyle,
    this.inputDecoration,
    this.inputTextStyle,
    this.inputErrorStyle,
    this.inputTextAlignVertical,
    this.nextButtonStyle,
    this.nextButtonProgressIndicatorSize,
    this.nextButtonProgressIndicatorColor,
    this.nextButtonProgressIndicatorStrokeWidth,
    this.codeInputThemeDefault,
    this.codeInputThemeFocused,
    this.codeInputThemeSubmitted,
    this.codeInputThemeFollowing,
    this.codeInputThemeDisabled,
    this.codeInputThemeError,
  );

  final Color primaryColor;
  final Color inversePrimaryColor;

  final EdgeInsets screenPadding;

  final ButtonStyle connectButtonStyle;
  final TextStyle connectButtonTextStyle;
  final TextStyle legalTextStyle;
  final EdgeInsets legalTextPadding;
  final TextStyle modalTitleTextStyle;

  final TextStyle titleStyle;

  final InputDecoration inputDecoration;
  final TextStyle inputTextStyle;
  final TextStyle inputErrorStyle;
  final TextAlignVertical inputTextAlignVertical;

  final ButtonStyle nextButtonStyle;
  final Size nextButtonProgressIndicatorSize;
  final Color nextButtonProgressIndicatorColor;
  final double nextButtonProgressIndicatorStrokeWidth;

  final PinTheme? codeInputThemeDefault;
  final PinTheme? codeInputThemeFocused;
  final PinTheme? codeInputThemeSubmitted;
  final PinTheme? codeInputThemeFollowing;
  final PinTheme? codeInputThemeDisabled;
  final PinTheme? codeInputThemeError;
}
