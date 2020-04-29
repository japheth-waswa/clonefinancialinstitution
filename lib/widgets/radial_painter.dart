import 'dart:math';

import 'package:flutter/widgets.dart';

class RadialPainter extends CustomPainter{

final Color bgColor;
final double widthSize;

RadialPainter(this.bgColor,this.widthSize);

  @override
  void paint(Canvas canvas, Size size) {
    Paint bgLine = Paint()
    ..color=bgColor
    ..strokeWidth=widthSize
    ..strokeCap=StrokeCap.round
    ..style=PaintingStyle.stroke;

    Offset center = Offset(size.width/2,size.height/2);
    double radius = min(size.width/2,size.height/2); 
   canvas.drawCircle(center, radius, bgLine);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}