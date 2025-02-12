import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';

final class WaveCarouselTheme extends ThemeExtension<WaveCarouselTheme> {
  WaveCarouselTheme({required WaveTokens tokens})
      : backgroundGradient = tokens.gradients.gradient1,
        textColor = tokens.colors.onPrimary,
        borderRadius = BorderRadius.circular(tokens.borders.borderRadiusLg),
        shadow = tokens.shadows.shadow2;

  final LinearGradient backgroundGradient;
  final Color textColor;
  final BorderRadius borderRadius;
  final List<BoxShadow> shadow;

  @override
  WaveCarouselTheme copyWith({WaveTokens? tokens}) {
    return WaveCarouselTheme(
      tokens: tokens ?? WaveTokens.light,
    );
  }

  @override
  WaveCarouselTheme lerp(ThemeExtension<WaveCarouselTheme>? other, double t) {
    if (other is! WaveCarouselTheme) return this;
    return WaveCarouselTheme(
      tokens: WaveTokens.light,
    );
  }
}
