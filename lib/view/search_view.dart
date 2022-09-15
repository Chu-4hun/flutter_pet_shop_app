import 'package:flutter/material.dart';
import 'package:flutter_shop/search_controller.dart';
import 'package:get/get.dart';

class SearchW extends GetView<SearchController> {
  SearchW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SearchController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              child: TextField(
                onChanged: ((value) async {
                  if (value != '') {
                    controller.updateSearch(value);
                  }
                  // Get.snackbar('Response', response.body.toString());
                }),
              ),
            ),
            // if (controller.products.isNotEmpty)
            Expanded(
                child: Obx(
              () => ListView(children: controller.productWidgets),
            ))
            // Expanded(
          ],
        ),
      ),
    );
  }
}
