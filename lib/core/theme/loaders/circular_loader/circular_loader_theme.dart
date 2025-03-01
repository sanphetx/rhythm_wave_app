import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/loaders/circular_loader/circular_loader_colors.dart';
import 'package:rhythm_wave_app/core/theme/loaders/circular_loader/circular_loader_sizes.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';


final class WaveCircularLoaderTheme
    extends ThemeExtension<WaveCircularLoaderTheme> {
  WaveCircularLoaderTheme({required this.tokens})
      : colors = WaveCircularLoaderColors(
          color: tokens.colors.primary,
          backgroundColor: tokens.colors.outline,
        ),
        sizes = WaveCircularLoaderSizes(tokens: tokens);

  final WaveTokens tokens;
  final WaveCircularLoaderColors colors;
  final WaveCircularLoaderSizes sizes;

  @override
  WaveCircularLoaderTheme copyWith({WaveTokens? tokens}) {
    return WaveCircularLoaderTheme(tokens: tokens ?? this.tokens);
  }

  @override
  WaveCircularLoaderTheme lerp(
    ThemeExtension<WaveCircularLoaderTheme>? other,
    double t,
  ) {
    if (other is! WaveCircularLoaderTheme) {
      return this;
    }
    return WaveCircularLoaderTheme(tokens: tokens.lerp(other.tokens, t));
  }
}
