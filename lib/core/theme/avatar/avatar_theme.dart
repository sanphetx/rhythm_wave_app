import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/avatar/avatar_size_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';



final class WaveAvatarTheme extends ThemeExtension<WaveAvatarTheme> {
  WaveAvatarTheme({
    required WaveTokens tokens,
  }) : properties = WaveAvatarProperties(
          size: 32.0,
          backgroundColor: tokens.colors.primary,
          borderColor: tokens.colors.onPrimary,
        );

  final WaveAvatarProperties properties;

  @override
  WaveAvatarTheme copyWith({WaveAvatarProperties? properties}) {
    return WaveAvatarTheme(tokens: WaveTokens.light);
  }

  @override
  WaveAvatarTheme lerp(ThemeExtension<WaveAvatarTheme>? other, double t) {
    if (other is! WaveAvatarTheme) return this;
    return WaveAvatarTheme(tokens: WaveTokens.light);
  }
}
