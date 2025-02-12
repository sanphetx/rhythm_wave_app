import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveAvatarProperties extends ThemeExtension<WaveAvatarProperties> {
  const WaveAvatarProperties({
    required this.size,
    required this.backgroundColor,
    required this.borderColor,
  });

  final double size;
  final Color backgroundColor;
  final Color borderColor;

  @override
  WaveAvatarProperties copyWith({
    double? size,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return WaveAvatarProperties(
      size: size ?? this.size,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  @override
  WaveAvatarProperties lerp(
    ThemeExtension<WaveAvatarProperties>? other,
    double t,
  ) {
    if (other is! WaveAvatarProperties) return this;
    return WaveAvatarProperties(
      size: lerpDouble(size, other.size, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
