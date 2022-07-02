import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:task/Model/ProductModel.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    productapi();
  }

  Future<ShopDetails> productapi() async {
    var apiurl =
        Uri.parse("https://pt.frantic.in/RestApi/fetch_shops_by_distance");
    Map mapdata = {
      "latitude": "28.6210",
      "longitude": "77.3812",
      "distance": "20"
    };
    print(mapdata);
    var response = await http.post(apiurl, body: mapdata);

      ShopDetails value = ShopDetails.fromJson(jsonDecode(response.body));

      return value;
    
  }
}
