import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveCircularLoaderSizeProperties
    extends ThemeExtension<WaveCircularLoaderSizeProperties> {
  const WaveCircularLoaderSizeProperties({
    required this.loaderSizeValue,
    required this.loaderStrokeWidth,
  });

  final double loaderSizeValue;
  final double loaderStrokeWidth;

  @override
  WaveCircularLoaderSizeProperties copyWith({
    double? loaderSizeValue,
    double? loaderStrokeWidth,
  }) {
    return WaveCircularLoaderSizeProperties(
      loaderSizeValue: loaderSizeValue ?? this.loaderSizeValue,
      loaderStrokeWidth: loaderStrokeWidth ?? this.loaderStrokeWidth,
    );
  }

  @override
  WaveCircularLoaderSizeProperties lerp(
    ThemeExtension<WaveCircularLoaderSizeProperties>? other,
    double t,
  ) {
    if (other is! WaveCircularLoaderSizeProperties) {
      return this;
    }
    return WaveCircularLoaderSizeProperties(
      loaderSizeValue: lerpDouble(loaderSizeValue, other.loaderSizeValue, t)!,
      loaderStrokeWidth:
          lerpDouble(loaderStrokeWidth, other.loaderStrokeWidth, t)!,
    );
  }
}
