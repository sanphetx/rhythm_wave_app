import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveAppBarProperties extends ThemeExtension<WaveAppBarProperties> {
  const WaveAppBarProperties({
    required this.height,
    required this.titleTextStyle,
  });

  final double height;
  final TextStyle titleTextStyle;

  @override
  WaveAppBarProperties copyWith({
    double? height,
    TextStyle? titleTextStyle,
  }) {
    return WaveAppBarProperties(
      height: height ?? this.height,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
    );
  }

  @override
  WaveAppBarProperties lerp(
    ThemeExtension<WaveAppBarProperties>? other,
    double t,
  ) {
    if (other is! WaveAppBarProperties) {
      return this;
    }
    return WaveAppBarProperties(
      height: lerpDouble(height, other.height, t)!,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t)!,
    );
  }
}
