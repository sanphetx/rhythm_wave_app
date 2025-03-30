import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/core/router/app_router.dart';
import 'package:rhythm_wave_app/core/theme/tokens/colors.dart';
import 'package:rhythm_wave_app/core/theme/tokens/gradients.dart';
import 'package:rhythm_wave_app/core/theme/tokens/typography/text_styles.dart';
import 'package:rhythm_wave_app/data/user/mock_users.dart';
import 'package:rhythm_wave_app/core/generated/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // ✅ ค้นหาผู้ใช้จาก MockUsers
    final user = MockUsers.users.firstWhere(
      (user) => user.username == email || user.userId == email,
      orElse:
          () => User(
            userId: '',
            username: '',
            userUi: '',
            userPassword: '',
            userConfirmPassword: '',
          ),
    );

    if (user.userId.isNotEmpty && user.userPassword == password) {
      // ✅ Login สำเร็จ → ไปหน้า HomeScreen
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful! Welcome, ${user.username}')),
      );
      Future.delayed(const Duration(seconds: 1), () {
        context.go(Routes.homePath);
      });
    } else {
      // ❌ Login ไม่สำเร็จ
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<WaveColors>() ?? WaveColors.light;
    final textTheme =
        Theme.of(context).extension<WaveTextStyles>() ?? WaveTextStyles.regular;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:
              Theme.of(context).extension<WaveGradients>()?.gradient1 ??
              WaveGradients.light.gradient1,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Assets.images.musicdis.path,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: theme.surface,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      "Sign In",
                      style: textTheme.text24.copyWith(color: theme.primary),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Welcome to RhythmWave",
                      style: textTheme.text14.copyWith(
                        color: theme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Username / Email Field
                    _buildTextField(
                      label: "Username or Email address",
                      hintText: "Enter your email",
                      icon: Icons.person_outline,
                      controller: _emailController,
                      theme: theme,
                    ),
                    const SizedBox(height: 15),

                    // Password Field
                    _buildTextField(
                      label: "Password",
                      hintText: "Enter your password",
                      icon: Icons.lock_outline,
                      isPassword: true,
                      controller: _passwordController,
                      theme: theme,
                    ),
                    const SizedBox(height: 10),

                    // Forget Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget password",
                          style: textTheme.text14.copyWith(
                            color: theme.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Sign In Button
                    ElevatedButton(
                      onPressed: _login, // ✅ Login Function
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primary,
                        foregroundColor: theme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 80,
                        ),
                      ),
                      child: Text("Sign in", style: textTheme.text16),
                    ),

                    const SizedBox(height: 15),
                    Text(
                      "or",
                      style: textTheme.text14.copyWith(
                        color: theme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Social Login Buttons
                  _buildSocialButton(
                    "Continue with Facebook",
                    theme,
                  ),
                    const SizedBox(height: 10),
                    _buildSocialButton(
                      "Continue with Google",
                      theme,
                    ),

                    const SizedBox(height: 20),

                    // Sign Up Option
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: textTheme.text14.copyWith(
                            color: theme.onSurfaceVariant,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.go(
                              Routes.signUpPath,
                            ); 
                          },
                          child: Text(
                            "Sign Up",
                            style: textTheme.text14.copyWith(
                              color: theme.primary,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ✅ TextField Widget
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

  // ✅ Social Button Widget
  Widget _buildSocialButton(String text, WaveColors theme) {
    return ElevatedButton.icon(
      onPressed: () {},
    
      label: Text(text, style: TextStyle(color: theme.onSurfaceVariant)),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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
