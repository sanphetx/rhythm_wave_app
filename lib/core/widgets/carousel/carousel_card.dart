import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class CarouselCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CarouselCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.carouselTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Transform.scale(
        scale: 0.95,
        child: Container(
          decoration: BoxDecoration(
            gradient: theme.backgroundGradient,
            borderRadius: theme.borderRadius,
            boxShadow: theme.shadow,
          ),
          child: ClipRRect(
            borderRadius: theme.borderRadius,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title.toUpperCase(),
                          style: TextStyle(
                            color: theme.textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: theme.textColor.withOpacity(0.8),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
