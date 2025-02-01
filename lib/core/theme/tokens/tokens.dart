import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/tokens/borders.dart';
import 'package:rhythm_wave_app/core/theme/tokens/colors.dart';
import 'package:rhythm_wave_app/core/theme/tokens/gradients.dart';
import 'package:rhythm_wave_app/core/theme/tokens/opacities.dart';
import 'package:rhythm_wave_app/core/theme/tokens/shadows.dart';
import 'package:rhythm_wave_app/core/theme/tokens/spacing.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/typography.dart';

final class WaveTokens extends ThemeExtension<WaveTokens> {
  const WaveTokens({
    required this.borders,
    required this.colors,
    required this.gradients,
    required this.opacities,
    required this.shadows,
    required this.spacing,
    required this.typography,
  });

  // ใช้ค่าเริ่มต้นเพื่อป้องกัน null
  factory WaveTokens.defaultTokens() {
    return WaveTokens(
      borders: WaveBorders.borders,
      colors: WaveColors.light,
      gradients: WaveGradients.light,
      opacities: WaveOpacities.opacities,
      shadows: WaveShadows.light,
      spacing: WaveSpacing.spacing,
      typography: WaveTypography.typography,
    );
  }

  static final light = WaveTokens.defaultTokens();

  final WaveBorders borders;
  final WaveColors colors;
  final WaveGradients gradients;
  final WaveOpacities opacities;
  final WaveShadows shadows;
  final WaveSpacing spacing;
  final WaveTypography typography;

  @override
  WaveTokens copyWith({
    WaveBorders? borders,
    WaveColors? colors,
    WaveGradients? gradients,
    WaveOpacities? opacities,
    WaveShadows? shadows,
    WaveSpacing? spacing,
    WaveTypography? typography,
  }) {
    return WaveTokens(
      borders: borders ?? this.borders,
      colors: colors ?? this.colors,
      gradients: gradients ?? this.gradients,
      opacities: opacities ?? this.opacities,
      shadows: shadows ?? this.shadows,
      spacing: spacing ?? this.spacing,
      typography: typography ?? this.typography,
    );
  }

  @override
  WaveTokens lerp(ThemeExtension<WaveTokens>? other, double t) {
    if (other is! WaveTokens) {
      return this;
    }

    return WaveTokens(
      borders: borders.lerp(other.borders, t),
      colors: colors.lerp(other.colors, t),
      gradients: gradients.lerp(other.gradients, t),
      opacities: opacities.lerp(other.opacities, t),
      shadows: shadows.lerp(other.shadows, t),
      spacing: spacing.lerp(other.spacing, t),
      typography: typography.lerp(other.typography, t),
    );
  }
}
