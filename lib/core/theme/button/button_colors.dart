import 'package:flutter/material.dart';

final class WaveButtonColors extends ThemeExtension<WaveButtonColors> {
  const WaveButtonColors({
    required this.borderColor,
    required this.textColor,
    required this.filledVariantDisabledBackgroundColor,
    required this.filledVariantBackgroundColor,
    required this.filledVariantBackgroundGradient,
    required this.filledVariantTextColor,
    required this.textVariantTextColor,
  });

  final Color borderColor;
  final Color textColor;
  final Color filledVariantDisabledBackgroundColor;
  final Color filledVariantBackgroundColor;
  final LinearGradient filledVariantBackgroundGradient;
  final Color filledVariantTextColor;
  final Color textVariantTextColor;

  @override
  WaveButtonColors copyWith({
    Color? borderColor,
    Color? textColor,
    Color? filledVariantDisabledBackgroundColor,
    Color? filledVariantBackgroundColor,
    LinearGradient? filledVariantBackgroundGradient,
    Color? filledVariantTextColor,
    Color? textVariantTextColor,
  }) {
    return WaveButtonColors(
      borderColor: borderColor ?? this.borderColor,
      textColor: textColor ?? this.textColor,
      filledVariantDisabledBackgroundColor:
          filledVariantDisabledBackgroundColor ??
              this.filledVariantDisabledBackgroundColor,
      filledVariantBackgroundColor:
          filledVariantBackgroundColor ?? this.filledVariantBackgroundColor,
      filledVariantBackgroundGradient: filledVariantBackgroundGradient ??
          this.filledVariantBackgroundGradient,
      filledVariantTextColor:
          filledVariantTextColor ?? this.filledVariantTextColor,
      textVariantTextColor: textVariantTextColor ?? this.textVariantTextColor,
    );
  }

  @override
  WaveButtonColors lerp(ThemeExtension<WaveButtonColors>? other, double t) {
    if (other is! WaveButtonColors) {
      return this;
    }
    return WaveButtonColors(
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      filledVariantDisabledBackgroundColor: Color.lerp(
        filledVariantDisabledBackgroundColor,
        other.filledVariantDisabledBackgroundColor,
        t,
      )!,
      filledVariantBackgroundColor: Color.lerp(
        filledVariantBackgroundColor,
        other.filledVariantBackgroundColor,
        t,
      )!,
      filledVariantBackgroundGradient: LinearGradient.lerp(
        filledVariantBackgroundGradient,
        other.filledVariantBackgroundGradient,
        t,
      )!,
      filledVariantTextColor:
          Color.lerp(filledVariantTextColor, other.filledVariantTextColor, t)!,
      textVariantTextColor:
          Color.lerp(textVariantTextColor, other.textVariantTextColor, t)!,
    );
  }
}
