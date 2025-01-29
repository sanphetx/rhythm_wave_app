import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/generated/fonts.gen.dart';


final class WaveTextStyles extends ThemeExtension<WaveTextStyles> {
  const WaveTextStyles({
    required this.textDefault,
    required this.text8,
    required this.text12,
    required this.text14,
    required this.text16,
    required this.text18,
    required this.text20,
    required this.text24,
    required this.text28,
    required this.text32,
  });

  final TextStyle textDefault;
  final TextStyle text8;
  final TextStyle text12;
  final TextStyle text14;
  final TextStyle text16;
  final TextStyle text18;
  final TextStyle text20;
  final TextStyle text24;
  final TextStyle text28;
  final TextStyle text32;

  static const _medium = FontWeight.w500;
  static const _mediumVariant = [FontVariation('wght', 500)];
  static const _semiBold = FontWeight.w600;
  static const _semiBoldVariant = [FontVariation('wght', 600)];
  static const _bold = FontWeight.w700;
  static const _boldVariant = [FontVariation('wght', 700)];
  static const _defaultFontFamily = FontFamily.ibmPlexSansThai;

  static const regular = WaveTextStyles(
    text8: TextStyle(
      fontSize: 8,
      fontFamily: _defaultFontFamily,
    ),
    textDefault: TextStyle(
      fontSize: 14,
      fontFamily: _defaultFontFamily,
    ),
    text12: TextStyle(
      fontSize: 12,
      fontFamily: _defaultFontFamily,
    ),
    text14: TextStyle(
      fontSize: 14,
      fontFamily: _defaultFontFamily,
    ),
    text16: TextStyle(
      fontSize: 16,
      fontFamily: _defaultFontFamily,
    ),
    text18: TextStyle(
      fontSize: 18,
      fontFamily: _defaultFontFamily,
    ),
    text20: TextStyle(
      fontSize: 20,
      fontFamily: _defaultFontFamily,
    ),
    text24: TextStyle(
      fontSize: 24,
      fontFamily: _defaultFontFamily,
    ),
    text28: TextStyle(
      fontSize: 28,
      fontFamily: _defaultFontFamily,
    ),
    text32: TextStyle(
      fontSize: 32,
      fontFamily: _defaultFontFamily,
    ),
  );

  static const medium = WaveTextStyles(
    text8: TextStyle(
      fontSize: 8,
      fontFamily: _defaultFontFamily,
    ),
    textDefault: TextStyle(
      fontSize: 14,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text12: TextStyle(
      fontSize: 12,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text14: TextStyle(
      fontSize: 14,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text16: TextStyle(
      fontSize: 16,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text18: TextStyle(
      fontSize: 18,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text20: TextStyle(
      fontSize: 20,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text24: TextStyle(
      fontSize: 24,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text28: TextStyle(
      fontSize: 28,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
    text32: TextStyle(
      fontSize: 32,
      fontWeight: _medium,
      fontVariations: _mediumVariant,
      fontFamily: _defaultFontFamily,
    ),
  );

  static const semiBold = WaveTextStyles(
    text8: TextStyle(
      fontSize: 8,
      fontFamily: _defaultFontFamily,
    ),
    textDefault: TextStyle(
      fontSize: 14,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text12: TextStyle(
      fontSize: 12,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text14: TextStyle(
      fontSize: 14,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text16: TextStyle(
      fontSize: 16,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text18: TextStyle(
      fontSize: 18,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text20: TextStyle(
      fontSize: 20,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text24: TextStyle(
      fontSize: 24,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text28: TextStyle(
      fontSize: 28,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text32: TextStyle(
      fontSize: 32,
      fontWeight: _semiBold,
      fontVariations: _semiBoldVariant,
      fontFamily: _defaultFontFamily,
    ),
  );

  static const bold = WaveTextStyles(
    text8: TextStyle(
      fontSize: 8,
      fontFamily: _defaultFontFamily,
    ),
    textDefault: TextStyle(
      fontSize: 14,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text12: TextStyle(
      fontSize: 12,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text14: TextStyle(
      fontSize: 14,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text16: TextStyle(
      fontSize: 16,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text18: TextStyle(
      fontSize: 18,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text20: TextStyle(
      fontSize: 20,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text24: TextStyle(
      fontSize: 24,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text28: TextStyle(
      fontSize: 28,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
    text32: TextStyle(
      fontSize: 32,
      fontWeight: _bold,
      fontVariations: _boldVariant,
      fontFamily: _defaultFontFamily,
    ),
  );

  @override
  WaveTextStyles copyWith({
    TextStyle? textDefault,
    TextStyle? text8,
    TextStyle? text12,
    TextStyle? text14,
    TextStyle? text16,
    TextStyle? text18,
    TextStyle? text20,
    TextStyle? text24,
    TextStyle? text28,
    TextStyle? text32,
  }) {
    return WaveTextStyles(
      textDefault: textDefault ?? this.textDefault,
      text8: text8 ?? this.text8,
      text12: text12 ?? this.text12,
      text14: text14 ?? this.text14,
      text16: text16 ?? this.text16,
      text18: text18 ?? this.text18,
      text20: text20 ?? this.text20,
      text24: text24 ?? this.text24,
      text28: text28 ?? this.text28,
      text32: text32 ?? this.text32,
    );
  }

  @override
  WaveTextStyles lerp(
    ThemeExtension<WaveTextStyles>? other,
    double t,
  ) {
    if (other is! WaveTextStyles) {
      return this;
    }
    return WaveTextStyles(
      textDefault: TextStyle.lerp(textDefault, other.textDefault, t)!,
      text8: TextStyle.lerp(text8, other.text8, t)!,
      text12: TextStyle.lerp(text12, other.text12, t)!,
      text14: TextStyle.lerp(text14, other.text14, t)!,
      text16: TextStyle.lerp(text16, other.text16, t)!,
      text18: TextStyle.lerp(text18, other.text18, t)!,
      text20: TextStyle.lerp(text20, other.text20, t)!,
      text24: TextStyle.lerp(text24, other.text24, t)!,
      text28: TextStyle.lerp(text28, other.text28, t)!,
      text32: TextStyle.lerp(text32, other.text32, t)!,
    );
  }
}
