import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Model/ProductModel.dart';
import 'package:task/Model/loginModel.dart';
import 'package:http/http.dart' as http;
import 'package:task/view/HomePage.dart';

class LoginController extends GetxController {
  late TextEditingController usernamecontroller, passwordcontroller;
  var value;

  @override
  void onInit() {
    super.onInit();
    usernamecontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }
 

  Future<ProductsModel?> loginapi() async {
    var apiurl = Uri.parse("https://pt.frantic.in/RestApi/login_user");

    Map mapdatas = {
      "username": usernamecontroller.text,
      "password": passwordcontroller.text,
      "usertype": value
    };
    try {
      print(mapdatas);
      var response = await http.post(apiurl, body: mapdatas);
      if (response.statusCode == 200) {
        print(response.body);
        Get.offAll(const HomePage());
      }
    } catch (e) {}
  }
}
