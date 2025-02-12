import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveAvatar extends StatelessWidget {
  const WaveAvatar({
    required this.imageUrl,
    required this.size,
    super.key,
  });

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final avatarTheme = context.waveTheme.avatarTheme.properties;

    final placeholder = SvgPicture.asset(
      Assets.icons.user,
      fit: BoxFit.contain,
      width: size,
      height: size,
    );

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  avatarTheme.backgroundColor,
                  avatarTheme.borderColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Opacity(
              opacity: 0.65,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: avatarTheme.backgroundColor,
                ),
              ),
            ),
          ),
          ClipOval(
            child: Image.network(
              imageUrl,
              width: size,
              height: size,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
