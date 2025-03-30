import 'package:flutter/material.dart';
import 'mock_songs.dart'; // ✅ ใช้โมเดล Song เดียวกับ MockSongs

class MockKaraokeSongs {
  static final List<Song> songs = List.generate(
    10,
    (index) => Song(
      imageUrl: "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
      title: "Let me love you ~ Krisx",
      subtitle: "Single",
      duration: "4:17",
    ),
  );
}
