import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/avatar/avatar_theme.dart';
import 'package:rhythm_wave_app/core/theme/carouselTheme/wave_carousel_theme.dart';
import 'package:rhythm_wave_app/core/theme/loaders/circular_loader/circular_loader_theme.dart';
import 'package:rhythm_wave_app/core/theme/music_player/wave_music_player_Theme.dart';
import 'package:rhythm_wave_app/core/theme/song_item/song_item_theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/borders.dart';
import 'package:rhythm_wave_app/core/theme/tokens/colors.dart';
import 'package:rhythm_wave_app/core/theme/tokens/gradients.dart';
import 'package:rhythm_wave_app/core/theme/tokens/opacities.dart';
import 'package:rhythm_wave_app/core/theme/tokens/shadows.dart';
import 'package:rhythm_wave_app/core/theme/tokens/spacing.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';
import 'package:rhythm_wave_app/core/theme/app_bar/app_bar_theme.dart';
import 'package:rhythm_wave_app/core/theme/button/button_theme.dart';
import 'package:rhythm_wave_app/core/theme/text_input/text_input_theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/typography.dart';

final class WaveTheme extends ThemeExtension<WaveTheme> {
  WaveTheme({required this.tokens})
    : buttonTheme = WaveButtonTheme(tokens: tokens),
      textInputTheme = WaveTextInputTheme(tokens: tokens),
      appBarTheme = WaveAppBarTheme(tokens: tokens),
      avatarTheme = WaveAvatarTheme(tokens: tokens),
      musicplayerTheme = WaveMusicPlayerTheme(tokens: tokens),
      carouselTheme = WaveCarouselTheme(tokens: tokens),
      songItemTheme = WaveSongItemTheme(tokens: tokens),
      circularLoaderTheme = WaveCircularLoaderTheme(tokens: tokens);

  final WaveTokens tokens;
  final WaveCircularLoaderTheme circularLoaderTheme;
  final WaveButtonTheme buttonTheme;
  final WaveTextInputTheme textInputTheme;
  final WaveAppBarTheme appBarTheme;
  final WaveAvatarTheme avatarTheme;
  final WaveMusicPlayerTheme musicplayerTheme;
  final WaveCarouselTheme carouselTheme;
  final WaveSongItemTheme songItemTheme; 

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
  WaveTheme get waveTheme {
    final theme = Theme.of(this).extension<WaveTheme>();
    if (theme == null) {
      throw Exception(
        "❌ WaveTheme ไม่ถูกกำหนดใน ThemeData! ตรวจสอบให้แน่ใจว่าได้เพิ่ม WaveTheme ลงใน MaterialApp",
      );
    }
    return theme;
  }

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
  WaveAvatarTheme get waveAvatarTheme => waveTheme.avatarTheme;
  WaveMusicPlayerTheme get musicplayerTheme => waveTheme.musicplayerTheme;
  WaveCarouselTheme get carouselTheme => waveTheme.carouselTheme;
  WaveSongItemTheme get waveSongItemTheme => waveTheme.songItemTheme;
  WaveCircularLoaderTheme get waveCircularLoaderTheme =>waveTheme.circularLoaderTheme;
}
