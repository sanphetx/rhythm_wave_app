import 'package:flutter/cupertino.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/app_bar.dart';
import 'package:rhythm_wave_app/core/widgets/app_bar/data/menu_items.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: WaveAppBar)
Widget buildWaveAppBarUseCase(BuildContext context) {
  return WaveAppBar(menuItems: appMenuItems,);
  
}
