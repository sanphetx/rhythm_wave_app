import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/core/router/app_router.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rhythm Wave',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: AppRouter.router,
    );
  }
}
