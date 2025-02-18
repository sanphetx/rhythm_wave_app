import 'dart:ui';
import 'package:flutter/material.dart';

final class WaveSongItemProperties extends ThemeExtension<WaveSongItemProperties> {
  const WaveSongItemProperties({
    required this.backgroundColor,
    required this.textColor,
    required this.subtitleColor,
    required this.durationColor,
    required this.iconColor,
    required this.borderRadius,
    required this.padding,
    required this.imageSize,
    required this.titleStyle,
    required this.subtitleStyle,
    required this.durationStyle,
  });

  final Color backgroundColor;
  final Color textColor;
  final Color subtitleColor;
  final Color durationColor;
  final Color iconColor;
  final double borderRadius;
  final double padding;
  final double imageSize;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final TextStyle durationStyle;

  @override
  WaveSongItemProperties copyWith({
    Color? backgroundColor,
    Color? textColor,
    Color? subtitleColor,
    Color? durationColor,
    Color? iconColor,
    double? borderRadius,
    double? padding,
    double? imageSize,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? durationStyle,
  }) {
    return WaveSongItemProperties(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
      durationColor: durationColor ?? this.durationColor,
      iconColor: iconColor ?? this.iconColor,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      imageSize: imageSize ?? this.imageSize,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      durationStyle: durationStyle ?? this.durationStyle,
    );
  }

  @override
  WaveSongItemProperties lerp(
    ThemeExtension<WaveSongItemProperties>? other,
    double t,
  ) {
    if (other is! WaveSongItemProperties) return this;
    return WaveSongItemProperties(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      subtitleColor: Color.lerp(subtitleColor, other.subtitleColor, t)!,
      durationColor: Color.lerp(durationColor, other.durationColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
      padding: lerpDouble(padding, other.padding, t)!,
      imageSize: lerpDouble(imageSize, other.imageSize, t)!,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      subtitleStyle: TextStyle.lerp(subtitleStyle, other.subtitleStyle, t)!,
      durationStyle: TextStyle.lerp(durationStyle, other.durationStyle, t)!,
    );
  }
}
