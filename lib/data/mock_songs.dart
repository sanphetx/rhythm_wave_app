import 'package:flutter/material.dart';

// ✅ โมเดล Song (ใช้ร่วมกับ MockSongs)
class Song {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String duration;

  Song({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.duration,
  });
}

class MockKaraokeSongs {
  static final List<Song> songs = [
    Song(
      imageUrl: "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
      title: "Let me love you ~ Krisx",
      subtitle: "Single",
      duration: "4:17",
    ),
    Song(
      imageUrl: "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
      title: "Happier",
      subtitle: "Olivia Rodrigo",
      duration: "3:20",
    ),
  ];
}
