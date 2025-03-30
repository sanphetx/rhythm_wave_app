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
    this.size = 80, // ✅ ปรับให้ขนาดพอดี
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.waveTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // ✅ ป้องกัน overflow
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              album.imageUrl,
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),

          // ✅ ขยายพื้นที่ข้อความให้เหมาะสม
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  album.title,
                  style: TextStyle(
                    color: theme.tokens.colors.onPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  album.artist,
                  style: TextStyle(
                    color: theme.tokens.colors.onPrimary.withOpacity(0.7),
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // ✅ ปรับขนาดไอคอนให้เหมาะสม
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.white, size: 18),
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
    this.size = 80, // ✅ ปรับให้ขนาดพอดี
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      crossAxisCount: 2,  // ✅ ให้แสดง 2 คอลัมน์
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 2.5, // ✅ ปรับอัตราส่วนให้พอดี
      children: albums.map((album) {
        return AlbumListItemWidget(
          album: album,
          onMorePressed: () => print("More options tapped on ${album.title}"),
          size: size,
        );
      }).toList(),
    );
  }
}
class Playlist {
  final String imageUrl;
  final String title;

  Playlist({
    required this.imageUrl,
    required this.title,
  });
}
class PlaylistListWidget extends StatelessWidget {
  final List<Playlist> playlists;

  const PlaylistListWidget({
    super.key,
    required this.playlists,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          return _buildPlaylistItem(playlists[index]);
        },
      ),
    );
  }

  Widget _buildPlaylistItem(Playlist playlist) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          playlist.imageUrl,
          width: 140,
          height: 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

  Widget _buildPlaylistItem(Playlist playlist) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          playlist.imageUrl,
          width: 140,
          height: 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
