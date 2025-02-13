import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';

class ProfileScreen extends StatelessWidget {
  final String profileImageUrl;

  const ProfileScreen({super.key, required this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> playlists = [
      {
        "imageUrl": "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
        "title": "RED SUN IN SKY cn"
      },
      {
        "imageUrl": "https://i.scdn.co/image/ab67616d00001e022a038d3bf875d23e4aeaa84e",
        "title": "ตื่นมาคิด โทดไปปะวะ"
      },
      {
        "imageUrl": "https://i.scdn.co/image/ab67616d00001e022a038d3bf875d23e4aeaa84e",
        "title": "TSIS PLAYLIST"
      },
      {
        "imageUrl": "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
        "title": "ถามว่าแครมั้ย ก็ไม่"
      },
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: context.waveGradients.gradient1,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WaveAppBar(menuItems: appMenuItems),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "My Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),

                    Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            profileImageUrl,
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "Sanphet Saefang",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "My playlist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () => print("Show All Playlists"),
                          child: const Text(
                            "Show all",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,  
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.8, 
                    ),
                    itemCount: playlists.length,
                    itemBuilder: (context, index) {
                      return _buildPlaylistItem(
                        playlists[index]["imageUrl"]!,
                        playlists[index]["title"]!,
                      );
                    },
                  ),
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

 Widget _buildPlaylistItem(String imageUrl, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          imageUrl,
          width: double.infinity,
          height: 110,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: double.infinity,
            height: 110,
            color: Colors.grey.shade800, 
            child: const Center(
              child: Icon(Icons.image_not_supported, color: Colors.white, size: 40),
            ),
          ),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}

}
