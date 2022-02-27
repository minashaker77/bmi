import 'package:bmi/consts.dart';
import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {
IconContent({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 90,),
        SizedBox(height: 15),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
