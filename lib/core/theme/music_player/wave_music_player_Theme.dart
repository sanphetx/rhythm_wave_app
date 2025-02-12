import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/music_player/wave_music_player_colors.dart';
import 'package:rhythm_wave_app/core/theme/music_player/wave_music_player_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';

final class WaveMusicPlayerTheme extends ThemeExtension<WaveMusicPlayerTheme> {
  WaveMusicPlayerTheme({required WaveTokens tokens})
      : colors = WaveMusicPlayerColors(
          backgroundGradient: LinearGradient(
            colors: [tokens.colors.surface, tokens.colors.onSurface],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          iconColor: tokens.colors.onPrimaryContainer,
          textColor: tokens.colors.onPrimary,
          playButtonGradient: LinearGradient(
            colors: [tokens.colors.primary, tokens.colors.secondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        properties = WaveMusicPlayerProperties(
          borderRadius: BorderRadius.circular(tokens.borders.borderRadiusFull),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: tokens.typography.semiBold.textDefault,
        );

  final WaveMusicPlayerColors colors;
  final WaveMusicPlayerProperties properties;

  @override
  WaveMusicPlayerTheme copyWith({WaveTokens? tokens}) {
    return WaveMusicPlayerTheme(tokens: WaveTokens.light);
  }

  @override
  WaveMusicPlayerTheme lerp(
      ThemeExtension<WaveMusicPlayerTheme>? other, double t) {
    if (other is! WaveMusicPlayerTheme) return this;
    return WaveMusicPlayerTheme(tokens: WaveTokens.light);
  }
}
