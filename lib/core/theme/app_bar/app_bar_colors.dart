import 'package:flutter/material.dart';

final class WaveAppBarColor extends ThemeExtension<WaveAppBarColor> {
  const WaveAppBarColor({
    required this.backgroundColor,
    required this.statusBarColor,
  });

  final Color backgroundColor;
  final Color statusBarColor;

  @override
  WaveAppBarColor copyWith({
    Color? backgroundColor,
    Color? statusBarColor,
    Color? textColor,
  }) {
    return WaveAppBarColor(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      statusBarColor: statusBarColor ?? this.statusBarColor,
    );
  }

  @override
  WaveAppBarColor lerp(
    ThemeExtension<WaveAppBarColor>? other,
    double t,
  ) {
    if (other is! WaveAppBarColor) {
      return this;
    }
    return WaveAppBarColor(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      statusBarColor: Color.lerp(statusBarColor, other.statusBarColor, t)!,
    );
  }
}
