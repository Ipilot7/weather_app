import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(390, 89), 
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class BottomBarContainer extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,1);
    path_0.cubicTo(0,1,76.0769,16.9822,127,21);
    path_0.cubicTo(153.339,23.0782,168.554,24,195,24);
    path_0.cubicTo(221.446,24,235.661,23.0782,262,21);
    path_0.cubicTo(312.923,16.9822,390,1,390,1);
    path_0.lineTo(390,89);
    path_0.lineTo(0,89);
    path_0.lineTo(0,1);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.6961795,size.height*0.01123596), Offset(size.width*0.6961795,size.height), [Color(0xff3A3A6A).withOpacity(1),Color(0xff25244C).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(0,1);
    path_1.lineTo(0.0513978,0.755341);
    path_1.lineTo(-0.25,0.692023);
    path_1.lineTo(-0.25,1);
    path_1.lineTo(-0.25,89);
    path_1.lineTo(-0.25,89.25);
    path_1.lineTo(0,89.25);
    path_1.lineTo(390,89.25);
    path_1.lineTo(390.25,89.25);
    path_1.lineTo(390.25,89);
    path_1.lineTo(390.25,1);
    path_1.lineTo(390.25,0.692844);
    path_1.lineTo(389.949,0.755207);
    path_1.lineTo(390,1);
    path_1.cubicTo(389.949,0.755207,389.949,0.755266,389.948,0.755386);
    path_1.lineTo(389.946,0.755929);
    path_1.lineTo(389.935,0.758104);
    path_1.lineTo(389.893,0.766774);
    path_1.lineTo(389.727,0.801111);
    path_1.cubicTo(389.58,0.831451,389.36,0.876545,389.072,0.935541);
    path_1.cubicTo(388.495,1.05353,387.643,1.22713,386.539,1.44951);
    path_1.cubicTo(384.333,1.89427,381.124,2.53416,377.113,3.31459);
    path_1.cubicTo(369.093,4.87548,357.868,6.99851,345.053,9.24707);
    path_1.cubicTo(319.42,13.7446,287.43,18.7428,261.98,20.7508);
    path_1.cubicTo(235.644,22.8287,221.437,23.75,195,23.75);
    path_1.cubicTo(168.563,23.75,153.355,22.8286,127.02,20.7508);
    path_1.cubicTo(101.571,18.7428,69.8304,13.7446,44.4475,9.24714);
    path_1.cubicTo(31.757,6.99859,20.6577,4.87557,12.731,3.3147);
    path_1.cubicTo(8.76767,2.53427,5.59756,1.89439,3.41838,1.44963);
    path_1.cubicTo(2.32879,1.22725,1.48694,1.05366,0.917538,0.935668);
    path_1.cubicTo(0.632837,0.876674,0.416248,0.831581,0.270862,0.801242);
    path_1.lineTo(0.10657,0.766906);
    path_1.lineTo(0.0651988,0.758237);
    path_1.lineTo(0.054834,0.756062);
    path_1.lineTo(0.0522476,0.755519);
    path_1.cubicTo(0.0516779,0.755399,0.0513978,0.755341,0,1);
    path_1.close();

Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001282051;
paint_1_stroke.color=Color(0xff262C51).withOpacity(1.0);
canvas.drawPath(path_1,paint_1_stroke);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Color(0xff3E3F74).withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}