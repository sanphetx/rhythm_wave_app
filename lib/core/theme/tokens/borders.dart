import 'dart:ui';

import 'package:flutter/material.dart';

final class WaveBorders extends ThemeExtension<WaveBorders> {
  const WaveBorders({
    required this.borderRadiusX2s,
    required this.borderRadiusXs,
    required this.borderRadiusSm,
    required this.borderRadiusMd,
    required this.borderRadiusLg,
    required this.borderRadiusFull,
    required this.defaultBorderWidth,
    required this.activeBorderWidth,
    required this.activeBorderbar,
  });
  static const borders = WaveBorders(
      borderRadiusX2s: 2.0,
      borderRadiusXs: 4.0,
      borderRadiusSm: 8.0,
      borderRadiusMd: 12.0,
      borderRadiusLg: 16.0,
      borderRadiusFull: 999.0,
      defaultBorderWidth: 1.0,
      activeBorderWidth: 1.5,
      activeBorderbar: 40.0);

  final double borderRadiusX2s;
  final double borderRadiusXs;
  final double borderRadiusSm;
  final double borderRadiusMd;
  final double borderRadiusLg;
  final double borderRadiusFull;
  final double defaultBorderWidth;
  final double activeBorderWidth;
  final double activeBorderbar;

  @override
  WaveBorders copyWith({
    double? borderRadiusX2s,
    double? borderRadiusXs,
    double? borderRadiusSm,
    double? borderRadiusMd,
    double? borderRadiusLg,
    double? borderRadiusFull,
    double? defaultBorderWidth,
    double? activeBorderWidth,
    double? activeBorderbar,
  }) {
    return WaveBorders(
      borderRadiusX2s: borderRadiusX2s ?? this.borderRadiusX2s,
      borderRadiusXs: borderRadiusXs ?? this.borderRadiusXs,
      borderRadiusSm: borderRadiusSm ?? this.borderRadiusSm,
      borderRadiusMd: borderRadiusMd ?? this.borderRadiusMd,
      borderRadiusLg: borderRadiusLg ?? this.borderRadiusLg,
      borderRadiusFull: borderRadiusFull ?? this.borderRadiusFull,
      defaultBorderWidth: defaultBorderWidth ?? this.defaultBorderWidth,
      activeBorderWidth: activeBorderWidth ?? this.activeBorderWidth,
      activeBorderbar: activeBorderbar ?? this.activeBorderbar,
    );
  }

  @override
  WaveBorders lerp(ThemeExtension<WaveBorders>? other, double t) {
    if (other is! WaveBorders) {
      return this;
    }

    return WaveBorders(
      borderRadiusX2s: lerpDouble(borderRadiusX2s, other.borderRadiusX2s, t)!,
      borderRadiusXs: lerpDouble(borderRadiusXs, other.borderRadiusXs, t)!,
      borderRadiusSm: lerpDouble(borderRadiusSm, other.borderRadiusSm, t)!,
      borderRadiusMd: lerpDouble(borderRadiusMd, other.borderRadiusMd, t)!,
      borderRadiusLg: lerpDouble(borderRadiusLg, other.borderRadiusLg, t)!,
      borderRadiusFull:
          lerpDouble(borderRadiusFull, other.borderRadiusFull, t)!,
      defaultBorderWidth:
          lerpDouble(defaultBorderWidth, other.defaultBorderWidth, t)!,
      activeBorderWidth:
          lerpDouble(activeBorderWidth, other.activeBorderWidth, t)!,
      activeBorderbar:
          lerpDouble(activeBorderbar, other.activeBorderbar, t)!,
    );
  }
}
