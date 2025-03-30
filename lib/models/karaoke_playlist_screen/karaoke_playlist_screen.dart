import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';
import 'package:rhythm_wave_app/core/widgets/song_item/song_item.dart';
import 'package:rhythm_wave_app/data/mock_karaoke_songs.dart';
import 'package:rhythm_wave_app/models/karaoke_play/karaoke_play_screen.dart';

class KaraokePlaylistScreen extends StatelessWidget {
  const KaraokePlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: context.waveGradients.gradient1),
        child: SafeArea(
          child: Column(
            children: [
              WaveAppBar(menuItems: appMenuItems),
              const SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.waveSpacing.md,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Karaoke",
                    style: context.waveTypography.bold.text24.copyWith(
                      color: context.waveColors.onPrimary, 
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

             Expanded(
  child: ListView.builder(
    padding: EdgeInsets.symmetric(
      horizontal: context.waveSpacing.md,
    ),
    itemCount: MockKaraokeSongs.songs.length,
    itemBuilder: (context, index) {
      final song = MockKaraokeSongs.songs[index]; 

      return Padding(
        padding: EdgeInsets.only(bottom: context.waveSpacing.sm),
        child: WaveSongItemWidget(
          imageUrl: song.imageUrl, 
          title: song.title,       
          subtitle: song.subtitle, 
          duration: song.duration, 
          onTap: () => print("Playing ${song.title}"),
          onMorePressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KaraokePlayScreen(),
              ),
            );
          },
        ),
      );
    },
  ),
),


              // ✅ Music Player Widget ที่แสดงตลอด
              MusicPlayerWidget(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
                songTitle: "Happier",
                artist: "Olivia Rodrigo",
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
}
