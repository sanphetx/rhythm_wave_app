import 'package:flutter/material.dart';

final class WaveShadows extends ThemeExtension<WaveShadows> {
  const WaveShadows({
    required this.shadow1,
    required this.shadow2,
    required this.shadow3,
    required this.shadow4,
  });

  static const light = WaveShadows(
    shadow1: [
      BoxShadow(
        color: Color(0x24000000),
        blurRadius: 9.6,
        offset: Offset(2, -3),
      ),
    ],
    shadow2: [
      BoxShadow(
        color: Color(0x80585858),
        blurRadius: 12,
        offset: Offset(0, 4),
      ),
    ],
    shadow3: [
      BoxShadow(
        color: Color(0x0D000000),
        blurRadius: 4,
        offset: Offset(0, 4),
      ),
    ],
    shadow4: [
      BoxShadow(
        color: Color(0x0F000000),
        blurRadius: 1,
        offset: Offset(0, 3),
      ),
      BoxShadow(
        color: Color(0x4D000000),
        blurRadius: 8,
        offset: Offset(0, 3),
      ),
    ],
  );

  final List<BoxShadow> shadow1;
  final List<BoxShadow> shadow2;
  final List<BoxShadow> shadow3;
  final List<BoxShadow> shadow4;

  @override
  WaveShadows copyWith({
    List<BoxShadow>? shadow1,
    List<BoxShadow>? shadow2,
    List<BoxShadow>? shadow3,
    List<BoxShadow>? shadow4,
  }) {
    return WaveShadows(
      shadow1: shadow1 ?? this.shadow1,
      shadow2: shadow2 ?? this.shadow2,
      shadow3: shadow3 ?? this.shadow3,
      shadow4: shadow4 ?? this.shadow4,
    );
  }

  @override
  WaveShadows lerp(ThemeExtension<WaveShadows>? other, double t) {
    if (other is! WaveShadows) {
      return this;
    }

    return WaveShadows(
      shadow1: BoxShadow.lerpList(shadow1, other.shadow1, t)!,
      shadow2: BoxShadow.lerpList(shadow2, other.shadow2, t)!,
      shadow3: BoxShadow.lerpList(shadow3, other.shadow3, t)!,
      shadow4: BoxShadow.lerpList(shadow4, other.shadow4, t)!,
    );
  }
}
