import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';
import 'package:rhythm_wave_app/models/home/page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhythm Wave',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          WaveTheme(tokens: WaveTokens.light),
        ],
      ),
      home: HomeScreen(),
    );
  }
}
