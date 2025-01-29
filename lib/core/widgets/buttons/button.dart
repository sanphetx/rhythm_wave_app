import 'package:flutter/material.dart';

import 'package:rhythm_wave_app/core/theme/button/button_colors.dart';
import 'package:rhythm_wave_app/core/theme/button/button_properties.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveButton extends StatefulWidget {
  const WaveButton({
    super.key,
    this.isDisabled = false,
    this.isFullWidth = false,
    this.showBorder = false,
    this.borderRadius,
    this.backgroundColor,
    this.backgroundGradient,
    this.borderColor,
    this.textColor,
    this.borderWidth,
    this.disabledOpacityValue,
    this.gap,
    this.height,
    this.width,
    this.padding,
    this.onTap,
    this.leading,
    this.label,
    this.trailing,
  }) : assert(
          (backgroundGradient == null || backgroundColor == null),
          'Button cannot both have a gradient and a background color.',
        );

  final bool isDisabled;
  final bool isFullWidth;
  final bool showBorder;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final LinearGradient? backgroundGradient;
  final Color? borderColor;
  final Color? textColor;
  final double? borderWidth;
  final double? disabledOpacityValue;
  final double? gap;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? label;
  final Widget? trailing;

  @override
  State<WaveButton> createState() => _WaveButtonState();
}

class _WaveButtonState extends State<WaveButton> {
  @override
  Widget build(BuildContext context) {
    final WaveButtonProperties effectiveButtonProperties =
        context.waveTheme.buttonTheme.properties;

    final WaveButtonColors effectiveButtonColors =
        context.waveTheme.buttonTheme.colors;

    final BorderRadiusGeometry effectiveBorderRadius =
        widget.borderRadius ?? effectiveButtonProperties.borderRadius;

    final Color effectiveBackgroundColor = !widget.isDisabled
        ? widget.backgroundColor ??
            effectiveButtonColors.filledVariantBackgroundColor
        : effectiveButtonColors.filledVariantDisabledBackgroundColor;

    final LinearGradient? effectiveBackgroundGradient =
        !widget.isDisabled ? widget.backgroundGradient : null;

    final Color effectiveBorderColor =
        widget.borderColor ?? effectiveButtonColors.borderColor;

    final double effectiveBorderWidth =
        widget.borderWidth ?? context.waveBorders.defaultBorderWidth;

    final Color effectiveTextColor =
        widget.textColor ?? effectiveButtonColors.textColor;

    final double effectiveHeight =
        widget.height ?? effectiveButtonProperties.height;

    final double effectiveGap = widget.gap ?? effectiveButtonProperties.gap;

    final EdgeInsetsGeometry effectivePadding =
        widget.padding ?? effectiveButtonProperties.padding;

    final EdgeInsets resolvedDirectionalPadding =
        effectivePadding.resolve(Directionality.of(context));

    final EdgeInsetsGeometry correctedPadding = widget.padding == null
        ? EdgeInsetsDirectional.fromSTEB(
            widget.leading == null && widget.label != null
                ? resolvedDirectionalPadding.left
                : 0,
            resolvedDirectionalPadding.top,
            widget.trailing == null && widget.label != null
                ? resolvedDirectionalPadding.right
                : 0,
            resolvedDirectionalPadding.bottom,
          )
        : resolvedDirectionalPadding;

    final borderShape = RoundedRectangleBorder(
      borderRadius: effectiveBorderRadius,
      side: BorderSide(
        color: effectiveBorderColor,
        width: widget.showBorder ? effectiveBorderWidth : 0,
        style: widget.showBorder ? BorderStyle.solid : BorderStyle.none,
      ),
    );

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: ShapeDecoration(
          color: effectiveBackgroundGradient == null
              ? effectiveBackgroundColor
              : null,
          gradient: effectiveBackgroundGradient,
          shape: borderShape,
        ),
        child: InkWell(
          customBorder: borderShape,
          onTap: !widget.isDisabled ? widget.onTap : null,
          child: Container(
            width: widget.width,
            height: effectiveHeight,
            constraints: BoxConstraints(minWidth: effectiveHeight),
            decoration: ShapeDecoration(shape: borderShape),
            child: DefaultTextStyle(
              style: effectiveButtonProperties.textStyle.copyWith(
                color: effectiveTextColor,
              ),
              child: Padding(
                padding:
                    widget.isFullWidth ? EdgeInsets.zero : correctedPadding,
                child: widget.isFullWidth
                    ? Stack(
                        fit: StackFit.expand,
                        children: [
                          if (widget.leading != null)
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: effectiveGap,
                              ),
                              alignment: Directionality.of(context) ==
                                      TextDirection.ltr
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: widget.leading,
                            ),
                          if (widget.label != null)
                            Align(
                              child: widget.label,
                            ),
                          if (widget.trailing != null)
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: effectiveGap,
                              ),
                              alignment: Directionality.of(context) ==
                                      TextDirection.ltr
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: widget.trailing,
                            ),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.leading != null)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: effectiveGap,
                              ),
                              child: widget.leading,
                            ),
                          if (widget.label != null) widget.label!,
                          if (widget.trailing != null)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: effectiveGap,
                              ),
                              child: widget.trailing,
                            ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
