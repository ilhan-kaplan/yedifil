import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import 'package:yedifil/models/product.dart';
import 'package:yedifil/view/detail/widget/product_img.dart';
import 'package:yedifil/view/detail/widget/product_content.dart';
import 'package:yedifil/widgets/custom_app_bar.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                Icons.arrow_back_ios_outlined,
                Icons.favorite_outline,
                leftCallback: () => Navigator.of(context).pop(),
            ),
            SizedBox(height: 30,),
            ProductImg(product),
            ProductContent(product),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(product.quantity.toString(),style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
