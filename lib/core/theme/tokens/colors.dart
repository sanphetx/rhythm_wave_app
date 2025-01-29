import 'package:flutter/material.dart';

// reference: https://m3.material.io/styles/color/roles
final class WaveColors extends ThemeExtension<WaveColors> {
  const WaveColors({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.surface,
    required this.surfaceContainer,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.error,
    required this.onError,
    required this.shadow,
    required this.outline,
  });

  static const light = WaveColors(
    primary: Color(0xFF7450E6),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF714DE5),
    onPrimaryContainer: Color(0xFFFFFFFF),
    secondary: Color(0xFF180A42),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF2F1386),
    onSecondaryContainer: Color(0xFF180A42),
    surface: Color(0xFF14111E),
    surfaceContainer: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    onSurfaceVariant: Color(0xFF828282),
    error: Color(0xFFED4245),
    onError: Color(0xFFFFFFFF),
    shadow: Color(0x24000000),
    outline: Color(0xFFC8C8C8),
  );

  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color surface;
  final Color surfaceContainer;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color error;
  final Color onError;
  final Color shadow;
  final Color outline;

  @override
  ThemeExtension<WaveColors> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondary,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? surface,
    Color? surfaceContainer,
    Color? onSurface,
    Color? onSurfaceVariant,
    Color? error,
    Color? shadow,
    Color? onError,
    Color? outline,
    Color? secondaryOrg,
    Color? secondaryOrg1,
    Color? grey,
  }) {
    return WaveColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      surface: surface ?? this.surface,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      error: error ?? this.error,
      shadow: shadow ?? this.shadow,
      onError: onError ?? this.onError,
      outline: outline ?? this.outline,
    );
  }

  @override
  WaveColors lerp(ThemeExtension<WaveColors>? other, double t) {
    if (other is! WaveColors) {
      return this;
    }
    return WaveColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
    );
  }
}
