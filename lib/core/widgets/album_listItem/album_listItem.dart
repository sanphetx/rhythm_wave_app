import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class Album {
  final String imageUrl;
  final String title;
  final String artist;

  Album({
    required this.imageUrl,
    required this.title,
    required this.artist,
  });
}

class AlbumListItemWidget extends StatelessWidget {
  final Album album;
  final VoidCallback onMorePressed;
  final double size; 
  
  const AlbumListItemWidget({
    super.key,
    required this.album,
    required this.onMorePressed,
    this.size = 50,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.waveTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              album.imageUrl,
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  album.title.toUpperCase(),
                  style: TextStyle(
                    color: theme.tokens.colors.onPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  album.artist,
                  style: TextStyle(
                    color: theme.tokens.colors.onPrimary.withOpacity(0.7),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.white),
            onPressed: onMorePressed,
          ),
        ],
      ),
    );
  }
}

class AlbumListWidget extends StatelessWidget {
  final List<Album> albums;
  final double size;

  const AlbumListWidget({
    super.key,
    required this.albums,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2,
      ),
      itemCount: albums.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return AlbumListItemWidget(
          album: albums[index],
          onMorePressed: () => print("More options tapped on ${albums[index].title}"),
          size: size,
        );
      },
    );
  }
}

class PlaylistListWidget extends StatelessWidget {
  final List<String> playlistImages;
  final double width;

  const PlaylistListWidget({super.key, required this.playlistImages, this.width = 140});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlistImages.length,
        itemBuilder: (context, index) {
          return _buildPlaylistItem(playlistImages[index]);
        },
      ),
    );
  }

  Widget _buildPlaylistItem(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          width: width,
          height: 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
