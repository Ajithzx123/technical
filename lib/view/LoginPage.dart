import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Controller/loginapi.dart';
import 'package:task/view/constants/colors.dart';
import 'package:task/view/widgets/custButton.dart';
import 'package:task/view/widgets/customText.dart';
import 'package:task/view/widgets/signUp.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(5.w),
        child: GetBuilder<LoginController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 10.h,
                width: 10.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://media-exp1.licdn.com/dms/image/C560BAQHNaGabFjFIMg/company-logo_200_200/0/1612713923020?e=2147483647&v=beta&t=4r-BLtSCMtQA4oCMHtXRqVil8yNel428jYRI0QDYsIg"))
                ),
                ),
                SizedBox(height: 2.h,),
                PurpleTokoTextWidget(),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                    validator: (value) {},
                    textinputaction: TextInputAction.next,
                    textinputtype: TextInputType.emailAddress,
                    obscure: false,
                    controller: controller.usernamecontroller,
                    hinttext: "Email",
                    labeltext: "Email"),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                    validator: (value) {},
                    textinputaction: TextInputAction.done,
                    textinputtype: TextInputType.name,
                    obscure: true,
                    controller: controller.passwordcontroller,
                    hinttext: "Passowrd",
                    labeltext: "Password"),
                Row(
                  children: [
                    Radio(
                        value: "USER",
                        groupValue: controller.value,
                        onChanged: (valuue) {
                          setState(() {
                            controller.value = valuue;
                          });
                        }),
                    const Text("User"),
                    Radio(
                        value: "BUSINESS",
                        groupValue: controller.value,
                        onChanged: (valuue) {
                          setState(() {
                            controller.value = valuue;
                          });
                        }),
                    const Text("Business"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Forgot Password?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),

                //SizedBox(height: 15,),
                Button(
                  ontap: () {
                    controller.loginapi();
                    
                  },
                ),

                const SizedBox(
                  height: 25,
                ),
                const Text("or sign in using"),
                const SizedBox(
                  height: 15,
                ),

                const RegisterDontHaveAccount()
              ],
            );
          },
        ),
      )),
    );
  }

  RichText PurpleTokoTextWidget() {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "P",
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.purple)),
        TextSpan(
            text: "urple",
            style: TextStyle(fontSize: 13.sp, color: Colors.black)),
        TextSpan(
            text: "T",
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.purple)),
        TextSpan(
            text: "oko",
            style: TextStyle(fontSize: 13.sp, color: Colors.black)),
      ]),
    );
  }
}
