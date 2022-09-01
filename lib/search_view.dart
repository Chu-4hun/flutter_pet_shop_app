import 'package:flutter/material.dart';
import 'package:flutter_shop/cart.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchW extends StatelessWidget {
  const SearchW({Key? key}) : super(key: key);

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
                  final response = await http.get(Uri.parse(
                      'http://192.168.1.71:90/api/search/products?p_title=$value'));
          
                  Get.snackbar('Response', response.body.toString());
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
