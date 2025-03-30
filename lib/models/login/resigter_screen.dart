import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/core/router/app_router.dart';
import 'package:rhythm_wave_app/core/theme/tokens/colors.dart';
import 'package:rhythm_wave_app/core/theme/tokens/gradients.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/text_styles.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideAnimation = Tween<double>(
      begin: -300,
      end: 0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(const Duration(milliseconds: 300), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  final theme = Theme.of(context).extension<WaveColors>() ?? WaveColors.light;
  final textTheme = Theme.of(context).extension<WaveTextStyles>() ?? WaveTextStyles.regular;

  return Scaffold(
    body: Stack(
      children: [
        // ✅ พื้นหลัง Gradient
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: Theme.of(context).extension<WaveGradients>()?.gradient1 ??
                WaveGradients.light.gradient1,
          ),
        ),

        // ✅ แผ่นดิสก์ (พื้นหลัง)
        Positioned(
          bottom: -50, // ✅ ขยับลงเพื่อไม่ให้ทับฟอร์ม
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: 3.1416, // หมุน 180 องศา
            child: Image.asset(
              Assets.images.musicdis.path,
              width: double.infinity,
              height: 300, // ✅ ปรับขนาดให้พอดี
              fit: BoxFit.cover, // ✅ ป้องกันภาพโดนตัดขอบ
            ),
          ),
        ),

        // ✅ Signup Form (อยู่ด้านบนแผ่นดิสก์)
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: theme.surface,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [ // ✅ เพิ่มเงาให้เด่นขึ้น
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // ✅ ให้ฟอร์มพอดีกับเนื้อหา
              children: [
                Text("Sign Up",
                    style: textTheme.text24.copyWith(color: theme.primary)),
                const SizedBox(height: 5),
                Text("Welcome to RhythmWave",
                    style: textTheme.text14.copyWith(color: theme.onSurfaceVariant)),
                const SizedBox(height: 20),

                _buildTextField(
                  label: "Username or Email address",
                  hintText: "Enter your email",
                  icon: Icons.person_outline,
                  controller: _emailController,
                  theme: theme,
                ),
                const SizedBox(height: 15),

                _buildTextField(
                  label: "Password",
                  hintText: "Enter your password",
                  icon: Icons.lock_outline,
                  isPassword: true,
                  controller: _passwordController,
                  theme: theme,
                ),
                const SizedBox(height: 15),

                _buildTextField(
                  label: "Confirm Password",
                  hintText: "Confirm your password",
                  icon: Icons.lock_outline,
                  isPassword: true,
                  controller: _confirmPasswordController,
                  theme: theme,
                ),
                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {}, // ✅ ระบบสมัครสมาชิก
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.primary,
                    foregroundColor: theme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 80),
                  ),
                  child: Text("Sign up", style: textTheme.text16),
                ),

                const SizedBox(height: 15),
                Text("or", style: textTheme.text14.copyWith(color: theme.onSurfaceVariant)),
                const SizedBox(height: 15),

                _buildSocialButton("Continue with Facebook", theme),
                const SizedBox(height: 10),
                _buildSocialButton("Continue with Google", theme),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?",
                        style: textTheme.text14.copyWith(color: theme.onSurfaceVariant)),
                    TextButton(
                      onPressed: () {
                        context.go(Routes.loginPath);
                      },
                      child: Text("Sign in",
                          style: textTheme.text14.copyWith(
                            color: theme.primary,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildTextField({
    required String label,
    required String hintText,
    required IconData icon,
    bool isPassword = false,
    required TextEditingController controller,
    required WaveColors theme,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: theme.onSurfaceVariant),
            prefixIcon: Icon(icon, color: theme.onSurfaceVariant),
            filled: true,
            fillColor: theme.surfaceContainer.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: theme.outline),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton(String text, WaveColors theme) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(text, style: TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: theme.onSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: theme.outline),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      ),
    );
  }
}
