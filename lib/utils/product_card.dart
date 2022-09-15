import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/Models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SizedBox(
      height: screen.height / 7,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                product.imgUrl,
                fit: BoxFit.cover ,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.title,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  AutoSizeText(
                    product.description,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    product.price.toString() + ' рублей',
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50.0,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
