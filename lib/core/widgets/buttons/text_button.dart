import 'package:flutter/material.dart';

import 'package:rhythm_wave_app/core/theme/theme.dart';
import 'package:rhythm_wave_app/core/widgets/buttons/button.dart';

class WaveTextButton extends StatelessWidget {
  const WaveTextButton({
    super.key,
    this.isFullWidth = false,
    this.height,
    this.width,
    this.textColor,
    this.padding,
    this.onTap,
    this.leading,
    this.label,
    this.trailing,
  });

  final bool isFullWidth;
  final double? height;
  final double? width;
  final Color? textColor;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final Widget? leading;
  final Widget? label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final Color effectiveTextColor =
        textColor ?? context.waveTheme.buttonTheme.colors.textVariantTextColor;

    return WaveButton(
      isFullWidth: isFullWidth,
      textColor: effectiveTextColor,
      backgroundColor: Colors.transparent,
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
