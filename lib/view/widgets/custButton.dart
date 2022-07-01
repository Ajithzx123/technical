import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task/view/constants/colors.dart';

class Button extends StatelessWidget {
  final VoidCallback ontap;
  const Button({
    required this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 5.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: violetcolor
          ),
          child: Center(
              child: Text(
            "Log in",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 13.sp),
          ))),
    );
  }
}