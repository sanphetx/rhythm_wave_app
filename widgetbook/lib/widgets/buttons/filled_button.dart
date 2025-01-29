import 'package:flutter/cupertino.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/buttons/filled_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: WaveFilledButton)
Widget buildDefaultWaveFilledButtonUseCase(BuildContext context) {
  return WaveFilledButton(
    onTap: () {},
    backgroundGradient: context.waveGradients.gradient1,
    label: Text(
      context.knobs.string(
        label: 'Label',
        initialValue: 'การทดลองสิ่งมหัศจรรย์',
      ),
    ),
    isFullWidth: context.knobs.boolean(
      label: 'Full Width',
      initialValue: false,
    ),
  );
}

@widgetbook.UseCase(name: 'Disabled', type: WaveFilledButton)
Widget buildDisabledWaveFilledButtonUseCase(BuildContext context) {
  return WaveFilledButton(
    isDisabled: true,
    backgroundGradient: context.waveGradients.gradient1,
    label: Text(
      context.knobs.string(
        label: 'Label',
        initialValue: 'การทดลองสิ่งมหัศจรรย์',
      ),
    ),
    isFullWidth: context.knobs.boolean(
      label: 'Full Width',
      initialValue: false,
    ),
  );
}
