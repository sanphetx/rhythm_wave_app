import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';
import 'package:rhythm_wave_app/core/widgets/music_player/music_player.dart';

class KaraokePlayScreen extends StatefulWidget {
  const KaraokePlayScreen({super.key});

  @override
  _KaraokePlayScreenState createState() => _KaraokePlayScreenState();
}

class _KaraokePlayScreenState extends State<KaraokePlayScreen> {
  final List<String> lyrics = [
    "จำได้ไหมดอกไม้ดอกนั้นที่ฉันปลูกมันกับเธอ เมื่อวันที่เราอยู่ข้างกัน",
    "ฉันดูแลอยู่อย่างดีในทุกวัน",
    "แต่มันจะสวยเป็นพิเศษ เมื่อตอนที่ฝนพรำ",
    "จำได้ไหมอะไรที่เราชอบทำด้วยกันเมื่อวันเธออยู่กับฉัน",
    "ฉันยังทำแบบเดิมในทุกวัน",
    "แต่มันไม่เห็นมีความสุข เมื่อเราต้องไกลกัน",
    "มีคนคิดถึงเธอ แล้วเธอรู้สึกได้หรือเปล่า",
    "คนที่คิดถึงเธอ นั่งมองฟ้าและคิดถึงวันเก่า",
  ];

  final List<String> chords = [
    "A", "E/G#", "F#m", "Em", "D", "C#m", "Bm", "E"
  ];

  int _currentIndex = 0;
  Timer? _timer;
  bool _isPlaying = false;
  bool _showChords = false;
  ScrollController _scrollController = ScrollController();

  List<String?> assignedChords = [];

  @override
  void initState() {
    _assignChords();
    super.initState();
  }

  /// ✅ ฟังก์ชันสุ่มคอร์ดให้แต่ละบรรทัด
  void _assignChords() {
    final random = Random();
    assignedChords = List.generate(lyrics.length, (_) {
      return random.nextBool() ? chords[random.nextInt(chords.length)] : null;
    });
  }

  /// ✅ เริ่มเล่นและเลื่อนเนื้อเพลง
  void _startScrolling() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentIndex < lyrics.length - 1) {
        setState(() {
          _currentIndex++;
          _scrollToCurrentLine();
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  /// ✅ ทำให้ ScrollView เลื่อนไปยังบรรทัดปัจจุบัน
  void _scrollToCurrentLine() {
    _scrollController.animateTo(
      _currentIndex * 50.0, // ปรับตามขนาดบรรทัด
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  /// ✅ ปุ่มเล่น/หยุด
  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _startScrolling();
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

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

              // ✅ Title & Toggle Chord Switch
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.waveSpacing.md),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Karaoke",
                      style: context.waveTypography.bold.text24.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          _showChords ? "Close Chord" : "Open Chord",
                          style: context.waveTypography.regular.text14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Switch(
                          value: _showChords,
                          onChanged: (value) {
                            setState(() {
                              _showChords = value;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ✅ Song Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.waveSpacing.md),
                child: Text(
                  "ดอกไม้ที่รอฝน (Spring)",
                  style: context.waveTypography.bold.text20.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
                  width: 180,
                  height: 180,
                ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.waveSpacing.md),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    reverse: true,
                    child: Column(
                      children: lyrics.asMap().entries.map((entry) {
                        int index = entry.key;
                        String line = entry.value;
                        String? chord = assignedChords[index];

                        return AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: index == _currentIndex ? 1.0 : 0.5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Column(
                              children: [
                                if (_showChords && chord != null)
                                  Text(
                                    chord,
                                    textAlign: TextAlign.center,
                                    style: context.waveTypography.bold.text16.copyWith(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                Text(
                                  line,
                                  textAlign: TextAlign.center,
                                  style: context.waveTypography.regular.text16.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.mic, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                  ],
                ),
              ),

              MusicPlayerWidget(
                imageUrl: "https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png",
                songTitle: "ดอกไม้ที่รอฝน (Spring)",
                artist: "THE TOYS & NONT TANONT",
                onPlay: _togglePlayPause,
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
