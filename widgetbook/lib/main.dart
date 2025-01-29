import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/localization/generated/l10n.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/theme/tokens/tokens.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appBuilder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          L10n.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeListResolutionCallback: (locales, supportedLocales) {
          return _setDefaultLocale(
            locales,
            supportedLocales,
            const Locale('th', 'TH'),
          );
        },
        supportedLocales: L10n.delegate.supportedLocales,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          extensions: <ThemeExtension<dynamic>>[
            WaveTheme(tokens: WaveTokens.light),
          ],
        ),
        home: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Align(
              alignment: Alignment.topCenter,
              child: child,
            ),
          ),
        ),
      ),
      directories: directories,
    );
  }

  Locale _setDefaultLocale(
    List<Locale>? locales,
    Iterable<Locale> supportedLocales,
    Locale defaultLocale,
  ) {
    return locales?.firstWhere(
          (locale) => supportedLocales.contains(locale),
          orElse: () => defaultLocale,
        ) ??
        defaultLocale;
  }
}
