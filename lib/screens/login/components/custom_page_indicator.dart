import 'package:flutter/material.dart';

class PageIndicatorPainter extends CustomPainter {
  final int pageCount;
  final double dotRadius;
  final double dotOutlineThickness;
  final double spacing;
  final double scrollPosition;
  final Paint dotFillPaint;
  final Paint dotOutlinePaint;
  final Paint indicatorPaint;

  PageIndicatorPainter(
      {required this.pageCount,
      required this.dotRadius,
      required this.dotOutlineThickness,
      required this.spacing,
      this.scrollPosition = 0.0,
      required Color dotFillColor,
      required Color dotOutlineColor,
      required Color indicatorColor})
      : dotFillPaint = Paint()..color = dotFillColor,
        dotOutlinePaint = Paint()..color = dotOutlineColor,
        indicatorPaint = Paint()..color = indicatorColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final double totalWidth =
        (pageCount * (3 * dotRadius)) + ((pageCount - 1) * spacing);

    _drawDots(canvas, center, totalWidth);

    _drawPageIndicator(canvas, center, totalWidth);
  }

  void _drawPageIndicator(Canvas canvas, Offset center, double totalWidth) {
    final int pageIndexToLeft = scrollPosition.floor();
    final double leftDotX = (center.dx - totalWidth) +
        (pageIndexToLeft * ((2 * dotRadius) + spacing));
    final double transitionPercent = scrollPosition - pageIndexToLeft;
    final double laggingLeftPositionPercent =
        (transitionPercent - 0.5).clamp(0.0, 0.7) / 0.5;
    final double indicatorLeftX =
        leftDotX + (laggingLeftPositionPercent * ((2 * dotRadius) + spacing));

    final double acceleratedRightPositionPercent =
        (transitionPercent / 0.5).clamp(0.0, 0.7) / 0.7;

    final double indicatorRightX = leftDotX +
        (acceleratedRightPositionPercent * ((2 * dotRadius) + spacing)) +
        (2 * dotRadius);

    canvas.drawRRect(
        RRect.fromLTRBR(indicatorLeftX + 1, -dotRadius + 1, indicatorRightX - 1,
            dotRadius - 1, Radius.circular(dotRadius - 1)),
        indicatorPaint);
  }

  void _drawDot(Canvas canvas, Offset dotCenter) {
    canvas.drawCircle(dotCenter, dotRadius - dotOutlineThickness, dotFillPaint);

    Path outLinePath = Path()
      ..addOval(Rect.fromCircle(center: dotCenter, radius: dotRadius))
      ..addOval(Rect.fromCircle(
          center: dotCenter, radius: dotRadius - dotOutlineThickness))
      ..fillType = PathFillType.evenOdd;
    canvas.drawPath(outLinePath, dotOutlinePaint);
  }

  void _drawDots(Canvas canvas, Offset center, double totalWidth) {
    Offset dotCenter = center.translate(-totalWidth + dotRadius, 0);
    for (int i = 0; i < pageCount; i++) {
      _drawDot(canvas, dotCenter);
      dotCenter = dotCenter.translate((2 * dotRadius) + spacing, 0);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
