class MockKaraokeSongs {
  static final List<Map<String, String>> songs = List.generate(
    10,
    (index) => {
      "imageUrl": "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
      "title": "Let me love you ~ Krisx",
      "subtitle": "Single",
      "duration": "4:17",
    },
  );
}
