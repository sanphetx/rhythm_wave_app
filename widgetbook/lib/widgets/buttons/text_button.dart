import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/widgets/buttons/text_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: WaveTextButton)
Widget buildWaveTextButtonUseCase(BuildContext context) {
  return WaveTextButton(
    onTap: () {},
    label: Text(
      context.knobs.string(
        label: 'Label',
        initialValue: 'การทดลองสิ่งมหัศจรรย์',
      ),
    ),
  );
}
