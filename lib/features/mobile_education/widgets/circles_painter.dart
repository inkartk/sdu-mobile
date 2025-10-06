import 'dart:math' as math;

import 'package:flutter/material.dart';

class ConcentricCirclesPainter extends CustomPainter {
  ConcentricCirclesPainter({
    required this.ringColor,
    required this.ringCount,
  });

  final Color ringColor;
  final int ringCount;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final shortest = math.min(size.width, size.height);
    final maxRadius = shortest * 0.52;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = shortest * 0.007
      ..isAntiAlias = true;

    for (var i = 0; i < ringCount; i++) {
      final t = (i + 1) / (ringCount + 0.3);
      final radius = maxRadius * t;
      paint.color = ringColor;
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant ConcentricCirclesPainter oldDelegate) {
    return oldDelegate.ringColor != ringColor ||
        oldDelegate.ringCount != ringCount;
  }
}
