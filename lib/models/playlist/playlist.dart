import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';
import 'package:rhythm_wave_app/core/widgets/song_item/song_item.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> songs = List.generate(
      6,
      (index) => {
        "imageUrl":
            "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
        "title": "Let me love you ~ Krisx",
        "subtitle": "Single",
        "duration": "4:17",
      },
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: context.waveGradients.gradient1,
        ),
        child: SafeArea(
          child: Column(
            children: [
              WaveAppBar(menuItems: appMenuItems),
              const SizedBox(height: 10),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPlaylistHeader(context),
                      const SizedBox(height: 10),
                      _buildPlaylistActions(context),
                      const SizedBox(height: 20),

                      ListView.builder(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.waveSpacing.md,
                        ),
                        itemCount: songs.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final song = songs[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: context.waveSpacing.sm,
                            ),
                            child: WaveSongItemWidget(
                              imageUrl: song["imageUrl"]!,
                              title: song["title"]!,
                              subtitle: song["subtitle"]!,
                              duration: song["duration"]!,
                              onTap: () {},
                              onMorePressed: () {},
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              MusicPlayerWidget(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Weeknd_-_Starboy.png/220px-The_Weeknd_-_Starboy.png",
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

  Widget _buildPlaylistHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.waveSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              context.waveBorders.borderRadiusMd,
            ),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.grey[800],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.white),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: context.waveSpacing.sm),
          Text(
            "ตื่นมาก็โลดโหดไปป่ะว่ะ",
            style: context.waveTypography.bold.text20,
          ),
          SizedBox(height: context.waveSpacing.xs),
          Text(
            "2018  •  118 songs  •  2 hr 14 m",
            style: context.waveTypography.regular.text14.copyWith(
              color: context.waveColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistActions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.waveSpacing.md),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow),
              label: const Text("Play all"),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.waveColors.primary,
                foregroundColor: context.waveColors.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    context.waveBorders.borderRadiusSm,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: context.waveSpacing.sm),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.playlist_add),
            label: const Text("Add to queue"),
            style: ElevatedButton.styleFrom(
              backgroundColor: context.waveColors.surfaceContainer,
              foregroundColor: context.waveColors.onSurface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  context.waveBorders.borderRadiusSm,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
