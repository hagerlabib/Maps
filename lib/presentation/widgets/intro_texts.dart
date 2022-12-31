import 'package:flutter/material.dart';

class IntroTexts extends StatelessWidget {
  const IntroTexts({super.key, this.textforask, this.textWidget});
    final String? textforask;
  final Widget? textWidget;

  @override
  Widget build(BuildContext context) {
   return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( textforask! , style: 
        TextStyle(fontWeight: FontWeight.bold,
        fontSize: 24 , color: Colors.black),
        ),
        SizedBox(height: 30,),
       textWidget!,
        
      ],
    );
  }
}