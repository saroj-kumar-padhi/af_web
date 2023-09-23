import 'package:flutter/material.dart';

class DottedLineHorizontal extends StatelessWidget {
  final Color color;
  final double height;
  final double lineWidth;
  final double dotWidth;
  final double spacing;

  DottedLineHorizontal({
    this.color = Colors.black,
    this.height = 1.0,
    this.lineWidth = 5.0,
    this.dotWidth = 2.0,
    this.spacing = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: DottedLinePainter(
        color: color,
        lineWidth: lineWidth,
        dotWidth: dotWidth,
        spacing: spacing,
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double lineWidth;
  final double dotWidth;
  final double spacing;

  DottedLinePainter({
    required this.color,
    required this.lineWidth,
    required this.dotWidth,
    required this.spacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round;

    final double totalDots = size.width / (dotWidth + spacing);

    for (double i = 0; i < totalDots; i++) {
      final double startX = i * (dotWidth + spacing);
      final double endX = startX + dotWidth;
      canvas.drawLine(Offset(startX, 0), Offset(endX, 0), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
