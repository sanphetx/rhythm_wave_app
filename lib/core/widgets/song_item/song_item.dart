import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveSongItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String duration;
  final VoidCallback? onTap;
  final VoidCallback? onMorePressed;

  const WaveSongItemWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.duration,
    this.onTap,
    this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    final songTheme = context.waveSongItemTheme.properties;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: songTheme.padding),
        height: 70.0,
        decoration: BoxDecoration(
          color: songTheme.backgroundColor,
          borderRadius: BorderRadius.circular(songTheme.borderRadius),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                width: songTheme.imageSize,
                height: songTheme.imageSize,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: songTheme.imageSize,
                    height: songTheme.imageSize,
                    color: Colors.grey,
                    child: const Icon(Icons.music_note, color: Colors.white),
                  );
                },
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: songTheme.titleStyle, maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(subtitle, style: songTheme.subtitleStyle, maxLines: 1, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            Text(duration, style: songTheme.durationStyle),
            const SizedBox(width: 8.0),
            GestureDetector(
              onTap: onMorePressed,
              child: Icon(Icons.more_vert, color: songTheme.iconColor),
            ),
          ],
        ),
      ),
    );
  }
}
