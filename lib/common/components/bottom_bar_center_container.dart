import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(266, 108),
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class BottomBarCenterContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(112, 0);
    path_0.lineTo(154, 0);
    path_0.cubicTo(186, 0, 195.501, 24.1398, 205.732, 48.6985);
    path_0.cubicTo(216.324, 74.1247, 227, 100, 262, 100);
    path_0.lineTo(3.99976, 100);
    path_0.cubicTo(38.9998, 100, 49.6751, 74.1247, 60.2675, 48.6985);
    path_0.cubicTo(70.4986, 24.1398, 79.9998, 0, 112, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.6902782, size.height * 0.9259259),
        Offset(size.width * 0.6902782, 0),
        [Color(0xff262C51).withOpacity(1), Color(0xff3E3F74).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(112, 0.25);
    path_1.lineTo(154, 0.25);
    path_1.cubicTo(169.923, 0.25, 180.229, 6.24974, 187.838, 15.3006);
    path_1.cubicTo(195.21, 24.0697, 200.052, 35.7041, 204.993, 47.575);
    path_1.cubicTo(205.163, 47.9813, 205.332, 48.3879, 205.501, 48.7947);
    path_1.lineTo(205.604, 49.0418);
    path_1.cubicTo(210.863, 61.6652, 216.179, 74.4274, 224.524, 84.0479);
    path_1.cubicTo(231.572, 92.1732, 240.776, 98.0545, 253.908, 99.75);
    path_1.lineTo(12.0911, 99.75);
    path_1.cubicTo(25.2233, 98.0545, 34.4274, 92.1732, 41.4753, 84.0479);
    path_1.cubicTo(49.8202, 74.4273, 55.1367, 61.6651, 60.3954, 49.0417);
    path_1.lineTo(60.4983, 48.7947);
    path_1.cubicTo(60.6677, 48.3879, 60.837, 47.9813, 61.0061, 47.5751);
    path_1.cubicTo(65.9471, 35.7041, 70.7897, 24.0697, 78.1616, 15.3006);
    path_1.cubicTo(85.7705, 6.24974, 96.0769, 0.25, 112, 0.25);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001879699;
    paint_1_stroke.color = Color(0xff3A3A6A).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff25244C).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
