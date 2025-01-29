import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/button/button_colors.dart';
import 'package:rhythm_wave_app/core/theme/button/button_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';



final class WaveButtonTheme extends ThemeExtension<WaveButtonTheme> {
  WaveButtonTheme({required this.tokens})
      : colors = WaveButtonColors(
          borderColor: tokens.colors.outline,
          textColor: tokens.colors.onSurface,
          filledVariantDisabledBackgroundColor: tokens.colors.outline,
          filledVariantBackgroundColor: tokens.colors.primary,
          filledVariantBackgroundGradient: tokens.gradients.gradient1,
          filledVariantTextColor: tokens.colors.onPrimary,
          textVariantTextColor: tokens.colors.onSurface,
        ),
        properties = WaveButtonProperties(
          borderRadius: BorderRadius.circular(tokens.borders.borderRadiusFull),
          gap: 12,
          height: 46,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          textStyle: tokens.typography.semiBold.textDefault,
        );

  final WaveTokens tokens;
  final WaveButtonColors colors;
  final WaveButtonProperties properties;

  @override
  WaveButtonTheme copyWith({WaveTokens? tokens}) {
    return WaveButtonTheme(tokens: tokens ?? this.tokens);
  }

  @override
  WaveButtonTheme lerp(ThemeExtension<WaveButtonTheme>? other, double t) {
    if (other is! WaveButtonTheme) {
      return this;
    }
    return WaveButtonTheme(tokens: tokens.lerp(other.tokens, t));
  }
}
