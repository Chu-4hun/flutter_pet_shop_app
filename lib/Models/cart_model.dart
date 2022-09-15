// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_shop/Models/product_model.dart';

CartInfo cartFromJson(String str) => CartInfo.fromJson(json.decode(str));

String cartToJson(CartInfo data) => json.encode(data.toJson());

class CartInfo {
  CartInfo({
    required this.message,
    required this.products,
  });

  String message;
  List<Product> products;

  factory CartInfo.fromJson(Map<String, dynamic> json) => CartInfo(
        message: json["message"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

