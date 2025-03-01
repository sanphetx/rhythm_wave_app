import 'package:flutter/material.dart';
import 'package:rhythm_wave_app/core/theme/loaders/circular_loader/circular_loader_size_properties.dart';
import 'package:rhythm_wave_app/core/theme/theme.dart';



enum WaveCircularLoaderSize {
  xs,
  sm,
  md,
  lg,
}

class WaveCircularLoader extends StatefulWidget {
  const WaveCircularLoader({
    super.key,
    this.circularLoaderSize,
  });

  final WaveCircularLoaderSize? circularLoaderSize;

  @override
  State<WaveCircularLoader> createState() => _WaveCircularLoaderState();
}

class _WaveCircularLoaderState extends State<WaveCircularLoader> {
  WaveCircularLoaderSizeProperties _getCircularLoaderSize(
    BuildContext context,
    WaveCircularLoaderSize? circularLoaderSize,
  ) {
    switch (circularLoaderSize) {
      case WaveCircularLoaderSize.xs:
        return context.waveTheme.circularLoaderTheme.sizes.xs;
      case WaveCircularLoaderSize.sm:
        return context.waveTheme.circularLoaderTheme.sizes.sm;
      case WaveCircularLoaderSize.md:
        return context.waveTheme.circularLoaderTheme.sizes.md;
      case WaveCircularLoaderSize.lg:
        return context.waveTheme.circularLoaderTheme.sizes.lg;
      default:
        return context.waveTheme.circularLoaderTheme.sizes.md;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor =
        context.waveTheme.circularLoaderTheme.colors.backgroundColor;

    final Color effectiveColor =
        context.waveTheme.circularLoaderTheme.colors.color;

    final WaveCircularLoaderSizeProperties effectiveLoaderSize =
        _getCircularLoaderSize(context, widget.circularLoaderSize);

    final double effectiveSize = effectiveLoaderSize.loaderSizeValue;

    final double effectiveStrokeWidth = effectiveLoaderSize.loaderStrokeWidth;

    return SizedBox(
      width: effectiveSize,
      height: effectiveSize,
      child: CircularProgressIndicator(
        color: effectiveColor,
        backgroundColor: effectiveBackgroundColor,
        strokeWidth: effectiveStrokeWidth,
        strokeCap: StrokeCap.round,
      ),
    );
  }
}
