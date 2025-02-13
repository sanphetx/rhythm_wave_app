import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/models/my_profile/my_profile.dart';

class WaveAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  const WaveAvatar({
    required this.imageUrl,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final avatarTheme = context.waveTheme.avatarTheme.properties;

    final placeholder = SvgPicture.asset(
      Assets.icons.user,
      fit: BoxFit.contain,
      width: size,
      height: size,
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(profileImageUrl: imageUrl),
          ),
        );
      },
      child: SizedBox(
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
      ),
    );
  }
}
