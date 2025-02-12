import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rhythm_wave_app/core/localization/generated/l10n.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';
import 'package:rhythm_wave_app/models/home/page/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rhythm Wave',
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          WaveTheme(tokens: WaveTokens.defaultTokens()), 
        ],
      ),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.delegate.supportedLocales,
      home: const HomeScreen(),
    );
  }
}
