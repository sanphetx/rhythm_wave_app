import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/loaders/circular_loader/circular_loader_size_properties.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';



final class WaveCircularLoaderSizes
    extends ThemeExtension<WaveCircularLoaderSizes> {
  WaveCircularLoaderSizes({required this.tokens})
      : xs = const WaveCircularLoaderSizeProperties(
          loaderSizeValue: 16,
          loaderStrokeWidth: 2,
        ),
        sm = const WaveCircularLoaderSizeProperties(
          loaderSizeValue: 24,
          loaderStrokeWidth: 3,
        ),
        md = const WaveCircularLoaderSizeProperties(
          loaderSizeValue: 32,
          loaderStrokeWidth: 3,
        ),
        lg = const WaveCircularLoaderSizeProperties(
          loaderSizeValue: 40,
          loaderStrokeWidth: 4,
        );

  final WaveTokens tokens;

  final WaveCircularLoaderSizeProperties xs;
  final WaveCircularLoaderSizeProperties sm;
  final WaveCircularLoaderSizeProperties md;
  final WaveCircularLoaderSizeProperties lg;

  @override
  WaveCircularLoaderSizes copyWith({WaveTokens? tokens}) {
    return WaveCircularLoaderSizes(tokens: tokens ?? this.tokens);
  }

  @override
  WaveCircularLoaderSizes lerp(
    ThemeExtension<WaveCircularLoaderSizes>? other,
    double t,
  ) {
    if (other is! WaveCircularLoaderSizes) {
      return this;
    }
    return WaveCircularLoaderSizes(
      tokens: tokens.lerp(other.tokens, t),
    );
  }
}
