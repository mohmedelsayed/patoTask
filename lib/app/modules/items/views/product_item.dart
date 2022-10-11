import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  String name;
  double price;
  GestureTapCallback onTap;
  ProductItem({required this.name, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'name :',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  '${name}',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'price :',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  '${price.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
