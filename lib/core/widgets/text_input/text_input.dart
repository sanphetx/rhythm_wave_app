import 'package:flutter/material.dart';

import 'package:rhythm_wave_app/core/localization/generated/l10n.dart';
import 'package:rhythm_wave_app/core/theme/text_input/text_input_properties.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveTextInput extends StatefulWidget {
  const WaveTextInput({
    required this.label,
    required this.hintText,
    required this.onChanged,
    super.key,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.borderRadius,
    this.height,
    this.width,
    this.keyboardType,
    this.textInputAction,
    this.maxLength,
    this.isRequired = true,
    this.errorText,
    this.initialValue,
    this.maxLines = 1,
  });

  final String label;
  final String hintText;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final bool isRequired;
  final String? errorText;
  final Function(String) onChanged;
  final String? initialValue;
  final int maxLines;

  @override
  State<WaveTextInput> createState() => _WaveTextInputState();
}

class _WaveTextInputState extends State<WaveTextInput> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void didUpdateWidget(covariant WaveTextInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialValue != null &&
        widget.initialValue != oldWidget.initialValue &&
        widget.initialValue != _controller.text) {
      _controller.text = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final WaveTextInputProperties textInputProperties =
        context.waveTheme.textInputTheme.sizes.sm;

    final BorderRadiusGeometry effectiveBorderRadius =
        widget.borderRadius ?? textInputProperties.borderRadius;

    final BorderSide effectiveBorderSide = BorderSide(
      width: context.waveBorders.defaultBorderWidth,
      color: _isFocused
          ? context.waveColors.onSurface
          : widget.errorText != null
              ? context.waveColors.error
              : widget.borderColor ?? context.waveColors.outline,
    );

    final Color effectiveBackgroundColor =
        widget.backgroundColor ?? context.waveColors.onPrimary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.label,
              style: context.waveTypography.semiBold.text14.copyWith(
                color: context.waveColors.onSurfaceVariant,
                decoration: TextDecoration.none,
              ),
            ),
            if (widget.isRequired)
              Text(
                L10n.of(context).common_textinputDetectDialog_DetectText,
                style: context.waveTypography.semiBold.text14.copyWith(
                  color: context.waveColors.error,
                  decoration: TextDecoration.none,
                ),
              ),
          ],
        ),
        SizedBox(height: context.waveSpacing.x5s),
        Container(
          decoration: BoxDecoration(
            borderRadius: effectiveBorderRadius,
          ),
          child: TextField(
            controller: _controller
              ..text = _controller.text.isEmpty
                  ? widget.initialValue ?? ''
                  : _controller.text,
            focusNode: _focusNode,
            maxLines: widget.maxLines,
            onTapOutside: (_) {
              _focusNode.unfocus();
            },
            keyboardType: widget.keyboardType ?? TextInputType.text,
            textInputAction: widget.textInputAction,
            maxLength: widget.maxLength,
            style: textInputProperties.textStyle.copyWith(
              color: widget.textColor ?? context.waveColors.onSurface,
              decoration: TextDecoration.none,
              decorationThickness: 0,
            ),
            cursorColor: context.waveColors.onSurface,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: effectiveBackgroundColor,
              hintText: widget.hintText,
              hintStyle: textInputProperties.textStyle.copyWith(
                color: context.waveColors.outline,
                decoration: TextDecoration.none,
                decorationThickness: 0,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: effectiveBorderRadius as BorderRadius,
                borderSide: effectiveBorderSide,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: effectiveBorderRadius,
                borderSide: effectiveBorderSide,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: effectiveBorderRadius,
                borderSide: effectiveBorderSide,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: effectiveBorderRadius,
                borderSide: effectiveBorderSide,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: context.waveSpacing.x2s,
                horizontal: context.waveSpacing.x2s,
              ),
            ),
            onChanged: (text) => widget.onChanged(text),
          ),
        ),
        if (widget.errorText != null)
          Padding(
            padding: EdgeInsets.only(top: context.waveSpacing.x4s),
            child: Text(
              widget.errorText!,
              style: context.waveTypography.regular.text12.copyWith(
                color: context.waveColors.error,
              ),
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
