import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/Models/cart_model.dart';
import 'package:flutter_shop/Models/product_model.dart';
import 'package:flutter_shop/utils/product_card.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class SearchController extends GetxController {
  List<Product> products = <Product>[].obs;
  List<Widget> productWidgets = <Widget>[].obs;

  Future<void> updateSearch(String value) async {
    final res = await http.get(
        Uri.parse('http://bel-volk.ru/api/search/products?p_title=$value'));
    products = cartFromJson(res.body.toString()).products;
    productWidgets.clear();
    for (var element in products) {
      productWidgets.add(
        ProductCard(
          product: element,
        ),
      );
    }
  }
}
