import 'package:carousel_slider/carousel_slider.dart' as carousel_pkg;
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/widgets/carousel/carousel_card.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<Map<String, String>> items;

  const CarouselSliderWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return carousel_pkg.CarouselSlider( 
      options: carousel_pkg.CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
        viewportFraction: 0.8,
      ),
      items: items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselCardWidget(
              imageUrl: item['imageUrl']!,
              title: item['title']!,
              subtitle: item['subtitle']!,
            );
          },
        );
      }).toList(),
    );
  }
}
