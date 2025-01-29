import 'package:flutter/material.dart';

final class WaveTextInputProperties
    extends ThemeExtension<WaveTextInputProperties> {
  WaveTextInputProperties({
    required this.borderRadius,
    required this.padding,
    required this.textStyle,
  });

  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final TextStyle textStyle;

  @override
  WaveTextInputProperties copyWith({
    double? height,
    double? width,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    TextStyle? textStyle,
  }) {
    return WaveTextInputProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  WaveTextInputProperties lerp(
    ThemeExtension<WaveTextInputProperties>? other,
    double t,
  ) {
    if (other is! WaveTextInputProperties) {
      return this;
    }
    return WaveTextInputProperties(
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }
}
