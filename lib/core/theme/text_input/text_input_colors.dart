import 'package:flutter/material.dart';

final class WaveTextInputColors extends ThemeExtension<WaveTextInputColors> {
  WaveTextInputColors({
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  @override
  WaveTextInputColors copyWith({
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
  }) {
    return WaveTextInputColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  @override
  WaveTextInputColors lerp(
    ThemeExtension<WaveTextInputColors>? other,
    double t,
  ) {
    if (other is! WaveTextInputColors) {
      return this;
    }
    return WaveTextInputColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
