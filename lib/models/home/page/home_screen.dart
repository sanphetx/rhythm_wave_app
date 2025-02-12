import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/album_listItem/album_listItem.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/carousel/carousel_slider.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Album> albums = [
      Album(
        imageUrl:
            "https://www.usatoday.com/gcdn/authoring/authoring-images/2024/04/18/USAT/73369584007-013-1989-taylors-version-2023.jpeg",
        title: "SUN",
        artist: "THE TOY",
      ),
      Album(
        imageUrl:
            "https://www.usatoday.com/gcdn/authoring/authoring-images/2024/04/18/USAT/73369584007-013-1989-taylors-version-2023.jpeg",
        title: "How Sweet",
        artist: "New",
      ),
      Album(
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",
        title: "Starboy",
        artist: "The Weeknd",
      ),
      Album(
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",
        title: "1989",
        artist: "Taylor Swift",
      ),
      
    ];

    final List<String> playlistImages = [
            "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",

      "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",
      "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",
    ];

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
                    _buildSectionTitle(context, "Recommended playlist" ),
                    PlaylistListWidget(playlistImages: playlistImages),
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
