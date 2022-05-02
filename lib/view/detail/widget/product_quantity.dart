import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import 'package:yedifil/models/product.dart';

class ProductQuantity extends StatelessWidget {
 final Product product;
 ProductQuantity(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.3, 0),
            child: Container(
              width: 120,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Text(product.price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('TL',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.5,0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('-',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(product.quantity.toString(),style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Text('+',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
