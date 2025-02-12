import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class MusicPlayerWidget extends StatelessWidget {
  final String imageUrl;
  final String songTitle;
  final String artist;
  final VoidCallback onPlay;
  final VoidCallback onFavorite;
  final VoidCallback onShuffle;

  const MusicPlayerWidget({
    super.key,
    required this.imageUrl,
    required this.songTitle,
    required this.artist,
    required this.onPlay,
    required this.onFavorite,
    required this.onShuffle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.musicplayerTheme; 

    return ClipRRect(
      borderRadius: theme.properties.borderRadius,
      child: Container(
        padding: theme.properties.padding,
        decoration: BoxDecoration(
          gradient: theme.colors.backgroundGradient,
        ),
        child: Row(
          children: [
            ClipOval(
              child: Image.network(
                imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songTitle,
                    style: theme.properties.textStyle.copyWith(
                      color: theme.colors.textColor,
                    ),
                  ),
                  Text(
                    artist,
                    style: theme.properties.textStyle.copyWith(
                      color: theme.colors.textColor.withOpacity(0.7),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.list),
              color: theme.colors.iconColor,
              onPressed: onShuffle,
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              color: theme.colors.iconColor,
              onPressed: onFavorite,
            ),
            GestureDetector(
              onTap: onPlay,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: theme.colors.playButtonGradient,
                ),
                child: const Icon(Icons.play_arrow, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
