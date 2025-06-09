import 'package:flutter/material.dart';
import 'package:temp/core/constants/pallete.dart';

class Background extends StatelessWidget {
  const Background({super.key, this.colors, this.stops, this.alignment, this.radius, this.tileMode, this.focal, this.focalRadius, required this.child});

  final List<Color>? colors;
  final List<double>? stops;
  final AlignmentGeometry? alignment;
  final double? radius;
  final TileMode? tileMode;
  final AlignmentGeometry? focal;
  final double? focalRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:  colors ?? [Pallete.secondaryColor, Pallete.principalColor, ],
          stops: const [0.30, 0.95],
          tileMode: tileMode ?? TileMode.decal,
        )
      ),
      child: child,
      );
  }
}