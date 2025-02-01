import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: context.waveGradients.gradient1, // ✅ ใช้ WaveThemeX
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            WaveAppBar(menuItems: appMenuItems),
          ],
        ),
      ),
    );
  }
}
