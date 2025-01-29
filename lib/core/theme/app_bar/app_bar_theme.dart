import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/generated/fonts.gen.dart';
import 'package:rhythm_wave_app/core/theme/app_bar/app_bar_colors.dart';
import 'package:rhythm_wave_app/core/theme/app_bar/app_bar_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';


final class WaveAppBarTheme extends ThemeExtension<WaveAppBarTheme> {
  WaveAppBarTheme({required this.tokens})
      : colors = WaveAppBarColor(
          backgroundColor: tokens.colors.surfaceContainer,
          statusBarColor: Colors.transparent,
        ),
        properties = WaveAppBarProperties(
          height: 50,
          titleTextStyle: tokens.typography.regular.text20.copyWith(
            fontFamily: FontFamily.acmeGothic,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        );

  final WaveTokens tokens;
  final WaveAppBarColor colors;
  final WaveAppBarProperties properties;

  @override
  WaveAppBarTheme copyWith({WaveTokens? tokens}) {
    return WaveAppBarTheme(tokens: tokens ?? this.tokens);
  }

  @override
  WaveAppBarTheme lerp(ThemeExtension<WaveAppBarTheme>? other, double t) {
    if (other is! WaveAppBarTheme) {
      return this;
    }
    return WaveAppBarTheme(tokens: tokens.lerp(other.tokens, t));
  }
}
