import 'package:flutter/material.dart';

final class WaveMusicPlayerColors extends ThemeExtension<WaveMusicPlayerColors> {
  const WaveMusicPlayerColors({
    required this.backgroundGradient,
    required this.iconColor,
    required this.textColor,
    required this.playButtonGradient,
  });

  final LinearGradient backgroundGradient;
  final Color iconColor;
  final Color textColor;
  final LinearGradient playButtonGradient;

  @override
  WaveMusicPlayerColors copyWith({
    LinearGradient? backgroundGradient,
    Color? iconColor,
    Color? textColor,
    LinearGradient? playButtonGradient,
  }) {
    return WaveMusicPlayerColors(
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      iconColor: iconColor ?? this.iconColor,
      textColor: textColor ?? this.textColor,
      playButtonGradient: playButtonGradient ?? this.playButtonGradient,
    );
  }

  @override
  WaveMusicPlayerColors lerp(
      ThemeExtension<WaveMusicPlayerColors>? other, double t) {
    if (other is! WaveMusicPlayerColors) {
      return this;
    }
    return WaveMusicPlayerColors(
      backgroundGradient: LinearGradient.lerp(
          backgroundGradient, other.backgroundGradient, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      playButtonGradient:
          LinearGradient.lerp(playButtonGradient, other.playButtonGradient, t)!,
    );
  }
}

