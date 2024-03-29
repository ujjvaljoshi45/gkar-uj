import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;

  final double radius;
  final Color color;
  
  final Widget widget;
 
  const CustomButton(
      {super.key,
      required this.height,
      required this.radius,
      required this.width,
      required this.color,
   
      required this.widget,
    
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child:widget
    );
  }
}
