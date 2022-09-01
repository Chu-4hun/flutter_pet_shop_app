import 'package:flutter/material.dart';
import 'package:flutter_shop/cart.dart';
import 'package:flutter_shop/product_card.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchW extends StatelessWidget {
  SearchW({Key? key}) : super(key: key);

  List<Product>? _products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              child: TextField(
                onChanged: ((value) async {
                  final res = await http.get(Uri.parse(
                      'http://192.168.1.71:90/api/search/products?p_title=$value'));
                  _products = cartFromJson(res.body.toString()).products;
                  // Get.snackbar('Response', response.body.toString());
                }),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _products?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    product: _products![index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
