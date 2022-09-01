import 'package:flutter/material.dart';
import 'package:flutter_shop/cart.dart';
import 'package:flutter_shop/reusable_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: Colors.white24,
      child: Row(children: [
        Image.network(product.imgUrl),
      ]),
    );
  }
}
