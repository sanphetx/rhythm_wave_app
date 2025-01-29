import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/app_bar/app_bar_theme.dart';
import 'package:rhythm_wave_app/core/theme/button/button_theme.dart';
import 'package:rhythm_wave_app/core/theme/text_input/text_input_theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/borders.dart';
import 'package:rhythm_wave_app/core/theme/tokens/colors.dart';
import 'package:rhythm_wave_app/core/theme/tokens/gradients.dart';
import 'package:rhythm_wave_app/core/theme/tokens/opacities.dart';
import 'package:rhythm_wave_app/core/theme/tokens/shadows.dart';
import 'package:rhythm_wave_app/core/theme/tokens/spacing.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/typography.dart';

final class WaveTheme extends ThemeExtension<WaveTheme> {
  WaveTheme({required this.tokens})
      : buttonTheme = WaveButtonTheme(tokens: tokens),
        textInputTheme = WaveTextInputTheme(tokens: tokens),
        appBarTheme = WaveAppBarTheme(tokens: tokens);


  final WaveTokens tokens;
  final WaveButtonTheme buttonTheme;
  final WaveTextInputTheme textInputTheme;
  final WaveAppBarTheme appBarTheme;

  @override
  WaveTheme copyWith({WaveTokens? tokens}) {
    return WaveTheme(tokens: tokens ?? this.tokens);
  }

  @override
  WaveTheme lerp(ThemeExtension<WaveTheme>? other, double t) {
    if (other is! WaveTheme) {
      return this;
    }
    return WaveTheme(tokens: tokens.lerp(other.tokens, t));
  }
}

extension WaveThemeX on BuildContext {
  WaveTheme get waveTheme => Theme.of(this).extension<WaveTheme>()!;
  WaveBorders get waveBorders => waveTheme.tokens.borders;
  WaveColors get waveColors => waveTheme.tokens.colors;
  WaveGradients get waveGradients => waveTheme.tokens.gradients;
  WaveOpacities get waveOpacities => waveTheme.tokens.opacities;
  WaveShadows get waveShadows => waveTheme.tokens.shadows;
  WaveSpacing get waveSpacing => waveTheme.tokens.spacing;
  WaveTypography get waveTypography => waveTheme.tokens.typography;
  WaveButtonTheme get waveButtonTheme => waveTheme.buttonTheme;
  WaveTextInputTheme get waveTextInputTheme => waveTheme.textInputTheme;
  WaveAppBarTheme get appBarTheme => waveTheme.appBarTheme;
}
