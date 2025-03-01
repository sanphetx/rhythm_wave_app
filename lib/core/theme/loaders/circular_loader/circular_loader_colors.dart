import 'package:flutter/material.dart';

final class WaveCircularLoaderColors
    extends ThemeExtension<WaveCircularLoaderColors> {
  const WaveCircularLoaderColors({
    required this.color,
    required this.backgroundColor,
  });

  final Color color;
  final Color backgroundColor;

  @override
  WaveCircularLoaderColors copyWith({
    Color? color,
    Color? backgroundColor,
  }) {
    return WaveCircularLoaderColors(
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  WaveCircularLoaderColors lerp(
    ThemeExtension<WaveCircularLoaderColors>? other,
    double t,
  ) {
    if (other is! WaveCircularLoaderColors) {
      return this;
    }
    return WaveCircularLoaderColors(
      color: Color.lerp(color, other.color, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
