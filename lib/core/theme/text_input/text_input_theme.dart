import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/text_input/text_input_colors.dart';
import 'package:rhythm_wave_app/core/theme/text_input/text_input_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';



final class WaveTextInputTheme extends ThemeExtension<WaveTextInputTheme> {
  WaveTextInputTheme({
    required this.tokens,
  })  : colors = WaveTextInputColors(
          backgroundColor: tokens.colors.onPrimary,
          textColor: tokens.colors.onSurfaceVariant,
          borderColor: tokens.colors.outline,
        ),
        sizes = WaveTextInputSizes(tokens: tokens);

  final WaveTokens tokens;
  final WaveTextInputColors colors;
  final WaveTextInputSizes sizes;

  @override
  WaveTextInputTheme copyWith({WaveTokens? tokens}) {
    return WaveTextInputTheme(tokens: tokens ?? this.tokens);
  }

  @override
  WaveTextInputTheme lerp(
    ThemeExtension<WaveTextInputTheme>? other,
    double t,
  ) {
    if (other is! WaveTextInputTheme) {
      return this;
    }
    return WaveTextInputTheme(tokens: tokens);
  }
}

final class WaveTextInputSizes extends ThemeExtension<WaveTextInputSizes> {
  WaveTextInputSizes({required this.tokens})
      : sm = WaveTextInputProperties(
          borderRadius: BorderRadius.circular(tokens.borders.borderRadiusSm),
          padding: EdgeInsets.fromLTRB(
            tokens.spacing.x2s,
            tokens.spacing.x4s,
            tokens.spacing.x2s,
            tokens.spacing.x4s,
          ),
          textStyle: tokens.typography.semiBold.textDefault.copyWith(
            color: tokens.colors.shadow,
            fontWeight: FontWeight.normal,
          ),
        );

  final WaveTokens tokens;
  final WaveTextInputProperties sm;

  @override
  WaveTextInputSizes copyWith({WaveTokens? tokens}) {
    return WaveTextInputSizes(
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  WaveTextInputSizes lerp(ThemeExtension<WaveTextInputSizes>? other, double t) {
    if (other is! WaveTextInputSizes) {
      return this;
    }
    return WaveTextInputSizes(
      tokens: tokens,
    );
  }
}
