import 'package:flutter/material.dart';

// class CircularShape extends StatelessWidget {
//   final double radius;
//   final Color color;

//   const CircularShape({
//     Key? key,
//     required this.radius,
//     required this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: radius * 2,
//       height: radius * 2,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: color,
//       ),
//     );
//   }
// }


class GradientCircularDesign extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;

  const GradientCircularDesign({
    Key? key,
    required this.radius,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: gradientColors,
          center: Alignment.center,
          radius: 1.0,
        ),
      ),
    );
  }
}

  