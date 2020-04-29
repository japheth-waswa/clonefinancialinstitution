import 'package:flutter/material.dart';

class HomepageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.lineTo(0, 3 * size.height / 5);

    Offset curvedPoint1=Offset(1*size.width/2,size.height);
    Offset endPoint = Offset(size.width,3*size.height/5);

    path.quadraticBezierTo(curvedPoint1.dx, curvedPoint1.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
