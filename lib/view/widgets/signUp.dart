
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task/view/constants/colors.dart';

class RegisterDontHaveAccount extends StatelessWidget {
  const RegisterDontHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Dont have any Account ? ",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            TextSpan(
                text: "Sign Up",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: violetcolor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                   
                  })
          ]),
        ),
      
    );
  }
}
