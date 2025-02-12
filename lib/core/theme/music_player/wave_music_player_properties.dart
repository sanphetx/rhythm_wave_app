import 'package:flutter/material.dart';

final class WaveMusicPlayerProperties
    extends ThemeExtension<WaveMusicPlayerProperties> {
  const WaveMusicPlayerProperties({
    required this.borderRadius,
    required this.padding,
    required this.textStyle,
  });

  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  @override
  WaveMusicPlayerProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
  }) {
    return WaveMusicPlayerProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  WaveMusicPlayerProperties lerp(
      ThemeExtension<WaveMusicPlayerProperties>? other, double t) {
    if (other is! WaveMusicPlayerProperties) {
      return this;
    }
    return WaveMusicPlayerProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }
}