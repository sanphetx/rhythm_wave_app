import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/album_listItem/album_listItem_and_playlist.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/carousel/carousel_slider.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';
import 'package:rhythm_wave_app/data/menu_items.dart';
import 'package:rhythm_wave_app/data/mock_albums.dart';
import 'package:rhythm_wave_app/data/mock_playlists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Album> albums = MockAlbums.albums;
  late List<Playlist> playlists = MockPlaylists.playlists; // ✅ ใช้ `MockPlaylists.playlists`

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: context.waveGradients.gradient1,
        ),
        child: SafeArea(
          child: Column(
            children: [
              WaveAppBar(menuItems: appMenuItems),
              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    const SizedBox(height: 20),

                    CarouselSliderWidget(
                      items: albums
                          .map((album) => {
                                "imageUrl": album.imageUrl,
                                "title": album.title,
                                "subtitle": album.artist,
                              })
                          .toList(),
                    ),

                    const SizedBox(height: 20),
                    _buildSectionTitle(context, "Recommended album"),
                    AlbumListWidget(albums: albums, size: 60),

                    const SizedBox(height: 20),
                    _buildSectionTitle(context, "Recommended playlist"),
                    PlaylistListWidget(playlists: playlists), // ✅ ใช้ `MockPlaylists.playlists`
                  ],
                ),
              ),

              MusicPlayerWidget(
                imageUrl: 'https://picsum.photos/250?image=9',
                songTitle: 'Happier',
                artist: 'Olivia Rodrigo',
                onPlay: () => print("Play Song"),
                onFavorite: () => print("Favorite Song"),
                onShuffle: () => print("Shuffle Song"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
