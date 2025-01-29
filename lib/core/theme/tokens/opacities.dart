import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveOpacities extends ThemeExtension<WaveOpacities> {
  const WaveOpacities({required this.disabled});
  static const opacities = WaveOpacities(disabled: 0.5);

  final double disabled;

  @override
  WaveOpacities copyWith({double? disabled}) {
    return WaveOpacities(
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  WaveOpacities lerp(ThemeExtension<WaveOpacities>? other, double t) {
    if (other is! WaveOpacities) {
      return this;
    }

    return WaveOpacities(
      disabled: lerpDouble(disabled, other.disabled, t)!,
    );
  }
}
