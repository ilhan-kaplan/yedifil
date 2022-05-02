import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import 'package:yedifil/models/product.dart';
import 'package:yedifil/view/detail/widget/product_quantity.dart';

class ProductContent extends StatelessWidget {
  final Product product;
  ProductContent(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(product.name, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                product.delivery,
              ),
              _buildIconText(
                Icons.star_outline,
                Colors.amber,
                product.score.toString(),
              ),
              _buildIconText(
                Icons.palette_outlined,
                Colors.red,
                product.color,
              ),
            ],
          ),
          SizedBox(height: 30,),
          ProductQuantity(product),
          SizedBox(height: 30,),
          Row(
            children: [
              Text('İlgili Ürünler',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.network(product.related[index].values.first,
                      width: 52,height: 52,),
                      SizedBox(height: 10,),
                      Text(product.related[index].keys.first),
                    ],
                  ),
                ),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: product.related.length
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Text('Ürün Bilgileri',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          SizedBox(height: 10,),
          Text(product.about,
          style: TextStyle(
            wordSpacing: 1.2,
            height: 1.5,
            fontSize: 12,
          ),),
        ],
      ),
    );
  }
  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(text,style: TextStyle(
          fontSize: 16,
        ),),
      ],
    );
  }
}
