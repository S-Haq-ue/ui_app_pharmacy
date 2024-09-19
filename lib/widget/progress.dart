import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:togen_test/const.dart';
// import 'package:togen_test/screens/flash_card/provider_flash_card.dart';

class CircleCrossSymbol extends StatelessWidget {
  const CircleCrossSymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: CustomPaint(
          size: const Size(double.maxFinite, double.maxFinite),
          painter: CircleSegmentPainter(),
        ),
      ),
      const SizedBox(
        height: 90,
        width: 90,
      ),
    ]);
  }
}

class CircleSegmentPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final Offset center = Offset(radius, radius);

    final Paint segmentPaint = Paint()
      ..shader = const LinearGradient(colors: [
        Color.fromARGB(255, 149, 219, 245),
        Color.fromARGB(255, 11, 122, 178),
      ]).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 200.0)) // Define the gradient area
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - 8),
      0,
      2 * pi,
      false,
      segmentPaint,
    );

    final Paint linePaint = Paint()
      ..shader = const LinearGradient(colors: [
        Color.fromARGB(255, 149, 219, 245),
        Color.fromARGB(255, 11, 122, 178),
      ]).createShader(
        const Rect.fromLTWH(0.0, 0.0, 200.0, 200.0),
      )
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    final Offset leftPoint = Offset(center.dx - radius + 10, center.dy);
    final Offset rightPoint = Offset(center.dx + radius - 10, center.dy);

    canvas.drawLine(leftPoint, rightPoint, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
