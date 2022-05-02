import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';

import '../../../models/product.dart';

class ProductImg extends StatelessWidget {
 final Product product;
 ProductImg(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          /*Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: kBackground,
                  ),
                ),
              ),
            ],
          ),*/
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Image.network(product.imgUrl,fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
