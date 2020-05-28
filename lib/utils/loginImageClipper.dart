import 'package:flutter/material.dart';

class LoginImageClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
     
    Path path = Path();
    path.lineTo(0,size.height);
    path.quadraticBezierTo(12, size.height-39, 40, size.height- 48);
    path.lineTo(size.width-40, size.height-140);
    path.quadraticBezierTo(size.width, size.height-145, size.width, size.height-212);
  path.lineTo(size.width, 0);
    return path;


  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }




}