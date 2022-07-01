// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
    ProductsModel({
        this.errorCode,
        this.responseString,
        this.data,
        this.data1,
        this.data2,
        this.data3,
    });

    int? errorCode;
    String? responseString;
    dynamic data;
    dynamic data1;
    dynamic data2;
    dynamic data3;

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        errorCode: json["error_code"],
        responseString: json["response_string"],
        data: json["data"],
        data1: json["data1"],
        data2: json["data2"],
        data3: json["data3"],
    );

    Map<String, dynamic> toJson() => {
        "error_code": errorCode,
        "response_string": responseString,
        "data": data,
        "data1": data1,
        "data2": data2,
        "data3": data3,
    };
}
