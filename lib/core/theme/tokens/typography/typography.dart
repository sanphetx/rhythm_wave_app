import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/text_styles.dart';

final class WaveTypography extends ThemeExtension<WaveTypography> {
  const WaveTypography({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });
  static const typography = WaveTypography(
    regular: WaveTextStyles.regular,
    medium: WaveTextStyles.medium,
    semiBold: WaveTextStyles.semiBold,
    bold: WaveTextStyles.bold,
  );

  final WaveTextStyles regular;
  final WaveTextStyles medium;
  final WaveTextStyles semiBold;
  final WaveTextStyles bold;

  @override
  WaveTypography copyWith({
    WaveTextStyles? regular,
    WaveTextStyles? medium,
    WaveTextStyles? semiBold,
    WaveTextStyles? bold,
  }) {
    return WaveTypography(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semiBold: semiBold ?? this.semiBold,
      bold: bold ?? this.bold,
    );
  }

  @override
  WaveTypography lerp(ThemeExtension<WaveTypography>? other, double t) {
    if (other is! WaveTypography) {
      return this;
    }

    return WaveTypography(
      regular: regular.lerp(other.regular, t),
      medium: medium.lerp(other.medium, t),
      semiBold: semiBold.lerp(other.semiBold, t),
      bold: bold.lerp(other.bold, t),
    );
  }
}
