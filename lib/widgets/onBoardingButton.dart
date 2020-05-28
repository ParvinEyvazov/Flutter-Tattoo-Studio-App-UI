import 'package:flutter/material.dart';
import 'package:tattoo_studio/utils/onBoardingButtonClipper.dart';
import 'package:tattoo_studio/utils/onBoardingImageClipper.dart';

class OnBoardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OnBoardingButtonClipper(),
      child: Container(
        width: 135,
        height: 155,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF9F3CB2),
            Color(0xFFF26567),
          ], stops: [
            0.4,
            1.0,
          ]),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 45),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
