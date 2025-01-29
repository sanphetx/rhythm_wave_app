import 'package:flutter/cupertino.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/bottom_app_bar.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: WaveBottomAppBar)
Widget buildWaveBottomAppBarBarUseCase(BuildContext context) {
  return const WaveBottomAppBar(
    height: 100,
    child: Text('Wonderful Experimentation'),
  );
}
