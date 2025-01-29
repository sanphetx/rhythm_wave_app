import 'package:flutter/material.dart';

final class WaveGradients extends ThemeExtension<WaveGradients> {
  const WaveGradients({
    required this.gradient1,
  });

  static final light = WaveGradients(
    gradient1: LinearGradient(
      begin: Alignment.topCenter,   // Start from the top
      end: Alignment.bottomCenter,  // End at the bottom
      stops: [0.0, 0.5, 1.0],        // Define the stops at 0%, 50%, and 100%
      colors: [
        Color(0xFF180A42), // Dark purple (0%)
        Color(0xFF14111E), // Darker greyish-purple (50%)
        Color(0xFF000000), // Black (100%)
      ],
    ),
  );

  final LinearGradient gradient1;

  @override
  WaveGradients copyWith({
    LinearGradient? gradient1,
  }) {
    return WaveGradients(
      gradient1: gradient1 ?? this.gradient1,
    );
  }

  @override
  WaveGradients lerp(ThemeExtension<WaveGradients>? other, double t) {
    if (other is! WaveGradients) {
      return this;
    }
    return WaveGradients(
      gradient1: LinearGradient.lerp(gradient1, other.gradient1, t)!,
    );
  }
}
