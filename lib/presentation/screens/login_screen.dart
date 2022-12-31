import 'package:flutter/material.dart';
import 'package:mps/constants/stings.dart';
import 'package:mps/presentation/widgets/custom_general_button.dart';
import 'package:mps/presentation/widgets/custom_indicator.dart';
import 'package:mps/presentation/widgets/intro_texts.dart';
import 'package:mps/presentation/widgets/phone_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  late String phoneNumber = "" ;
  final GlobalKey<FormState> _phoneFormKey = GlobalKey();
  Widget _buildFirstPageTexts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        askToVerify,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
  Widget _buildNextButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomGeneralButton(
        text: 'Next',
        onTap: () {
          // Navigator.of(context).pushReplacementNamed(mapScreen);
         CustomProgressIndicator.showProgressIndicator(context);
          // _register(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Form(
          key: _phoneFormKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroTexts(
                  textforask: askAboutPhone,
                  textWidget: _buildFirstPageTexts(),
                ),
                SizedBox(
                  height: 100,
                ),
                PhoneFormFeild(phoneNumber: phoneNumber,),
                SizedBox(
                  height: 140,
                ),
                _buildNextButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
