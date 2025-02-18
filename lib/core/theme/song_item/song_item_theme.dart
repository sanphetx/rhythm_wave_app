import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/song_item/song_item_.properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';

final class WaveSongItemTheme extends ThemeExtension<WaveSongItemTheme> {
  WaveSongItemTheme({
    required WaveTokens tokens,
  }) : properties = WaveSongItemProperties(
          backgroundColor: tokens.colors.surfaceContainer,
          textColor: tokens.colors.onSurface,
          subtitleColor: tokens.colors.onSurfaceVariant,
          durationColor: tokens.colors.onSurfaceVariant,
          iconColor: tokens.colors.primary,
          borderRadius: tokens.borders.borderRadiusSm,
          padding: tokens.spacing.sm,
          imageSize: 50.0,
          titleStyle: tokens.typography.semiBold.text16,
          subtitleStyle: tokens.typography.regular.text12,
          durationStyle: tokens.typography.regular.text14,
        );

  final WaveSongItemProperties properties;

  @override
  WaveSongItemTheme copyWith({WaveSongItemProperties? properties}) {
    return WaveSongItemTheme(tokens: WaveTokens.light);
  }

  @override
  WaveSongItemTheme lerp(ThemeExtension<WaveSongItemTheme>? other, double t) {
    if (other is! WaveSongItemTheme) return this;
    return WaveSongItemTheme(tokens: WaveTokens.light);
  }
}
