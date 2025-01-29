import 'package:flutter/cupertino.dart';

import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/buttons/button.dart';

class WaveFilledButton extends StatelessWidget {
  const WaveFilledButton({
    super.key,
    this.isDisabled = false,
    this.isFullWidth = false,
    this.borderRadius,
    this.textColor,
    this.backgroundColor,
    this.backgroundGradient,
    this.height,
    this.width,
    this.padding,
    this.onTap,
    this.leading,
    this.label,
    this.trailing,
  });

  final bool isDisabled;
  final bool isFullWidth;
  final BorderRadiusGeometry? borderRadius;
  final Color? textColor;
  final Color? backgroundColor;
  final LinearGradient? backgroundGradient;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final LinearGradient effectiveBackgroundGradient = backgroundGradient ??
        context.waveTheme.buttonTheme.colors.filledVariantBackgroundGradient;

    final Color effectiveTextColor = textColor ??
        context.waveTheme.buttonTheme.colors.filledVariantTextColor;

    return WaveButton(
      isDisabled: isDisabled,
      isFullWidth: isFullWidth,
      borderRadius: borderRadius,
      textColor: effectiveTextColor,
      backgroundColor: backgroundGradient == null ? backgroundColor : null,
      backgroundGradient:
          backgroundColor == null ? effectiveBackgroundGradient : null,
      height: height,
      width: width,
      padding: padding,
      onTap: onTap,
      leading: leading,
      label: label,
      trailing: trailing,
    );
  }
}
