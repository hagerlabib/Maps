import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onTap,
      child: Text(
        text!,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black) , )
      style: ElevatedButton.styleFrom(
        minimumSize: Size(110, 50),
        primary: Colors.black,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      )
      ,
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key, this.text, this.onTap, this.iconData, this.color});
  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: MyColors.blue)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: MyColors.blue,
              ),
              textAlign: TextAlign.left,
            )
          ],
          // child: Text(
          //   text!,
          //   style: TextStyle(
          //       color: MyColors.myWhite,
          //       fontSize: 14,
          //       fontWeight: FontWeight.w500),
          //   textAlign: TextAlign.left,
          // ),
        ),
      ),
    );
  }
}
