import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';
import 'package:rhythm_wave_app/data/mock_music_categories.dart';

class MusicCategoriesScreen extends StatelessWidget {
  const MusicCategoriesScreen({super.key});

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
                    _buildSectionTitle(context, "Songs"),
                    const SizedBox(height: 10),
                    _buildMusicCategoriesGrid(),
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

  Widget _buildMusicCategoriesGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemCount: MockMusicCategories.categories.length,
      itemBuilder: (context, index) {
        final category = MockMusicCategories.categories[index];
        return _buildCategoryItem(category["image"]!, category["name"]!);
      },
    );
  }

  Widget _buildCategoryItem(String imageUrl, String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.6),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
