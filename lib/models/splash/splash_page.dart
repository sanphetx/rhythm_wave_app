import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';
import 'package:rhythm_wave_app/core/router/app_router.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(Routes.loginPath); // ✅ เปลี่ยนเป็นหน้า Login ก่อนเข้า Home
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: context.waveGradients.gradient1,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.logostart,
              width: 200,
              height: 200,
            ),
            Positioned(
              top: 110,
              child: SvgPicture.asset(
                Assets.icons.appwaveIcon,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              bottom: 50,
              child: const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
