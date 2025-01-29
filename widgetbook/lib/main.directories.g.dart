// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/widgets/app_bar/app_bar.dart' as _i2;
import 'package:widgetbook_workspace/widgets/app_bar/bottom_app_bar.dart'
    as _i3;
import 'package:widgetbook_workspace/widgets/buttons/filled_button.dart' as _i4;
import 'package:widgetbook_workspace/widgets/buttons/text_button.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'core',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookFolder(
            name: 'app_bar',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'WaveAppBar',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i2.buildWaveAppBarUseCase,
                ),
              ),
              _i1.WidgetbookLeafComponent(
                name: 'WaveBottomAppBar',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i3.buildWaveBottomAppBarBarUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'buttons',
            children: [
              _i1.WidgetbookComponent(
                name: 'WaveFilledButton',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Default',
                    builder: _i4.buildDefaultWaveFilledButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Disabled',
                    builder: _i4.buildDisabledWaveFilledButtonUseCase,
                  ),
                ],
              ),
              _i1.WidgetbookLeafComponent(
                name: 'WaveTextButton',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i5.buildWaveTextButtonUseCase,
                ),
              ),
            ],
          ),
        ],
      )
    ],
  )
];
