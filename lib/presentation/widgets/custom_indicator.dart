import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});
  static showProgressIndicator(BuildContext context){
    AlertDialog alertDialog = AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Center(
        child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black)),
      ),
    );

    showDialog(
      barrierColor: Colors.white.withOpacity(0),
      barrierDismissible: false,
      context: context, builder: (context){
      return alertDialog;
    });

  }
  @override
  Widget build(BuildContext context) {
  return Container();
}
}