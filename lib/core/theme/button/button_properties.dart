import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveButtonProperties extends ThemeExtension<WaveButtonProperties> {
  const WaveButtonProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.padding,
    required this.textStyle,
  });

  final BorderRadiusGeometry borderRadius;
  final double gap;
  final double height;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  @override
  WaveButtonProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
  }) {
    return WaveButtonProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gap: gap ?? this.gap,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  WaveButtonProperties lerp(
    ThemeExtension<WaveButtonProperties>? other,
    double t,
  ) {
    if (other is! WaveButtonProperties) {
      return this;
    }
    return WaveButtonProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }
}
