import 'package:flutter/material.dart';

final class WaveGradients extends ThemeExtension<WaveGradients> {
  const WaveGradients({
    required this.gradient1,
  });

  static final light = WaveGradients(
    gradient1: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 0.75, 1.0],  // ✅ ขยายระยะสีม่วงให้กว้างขึ้น
      colors: [
        Color(0xFF180A42), // สีม่วงเข้ม
        Color(0xFF10082A), // ✅ สีม่วงเข้มขึ้นกว่าเดิม
        Color(0xFF000000), // สีดำสนิท
      ],
    ),
  );

  final LinearGradient gradient1;

  @override
  WaveGradients copyWith({LinearGradient? gradient1}) {
    return WaveGradients(
      gradient1: gradient1 ?? this.gradient1,
    );
  }

  @override
  WaveGradients lerp(ThemeExtension<WaveGradients>? other, double t) {
    if (other is! WaveGradients) return this;
    return WaveGradients(
      gradient1: LinearGradient.lerp(gradient1, other.gradient1, t)!,
    );
  }
}
