import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import 'package:yedifil/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.network(product.imgUrl,fit:BoxFit.fitHeight),
          ),
          Expanded(child:
           Container(
             padding: EdgeInsets.only(top:20,left:10,right: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(product.name,style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       height: 1.5,
                     ),),
                     Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                   ],
                 ),
                 Text(product.desc,style: TextStyle(
                   color: product.hightLight ? kPrimaryColor : Colors.grey.withOpacity(0.8),
                   height: 1.5,
                 ),),
                 SizedBox(height: 5,),
                 Row(
                   children: [
                     Text('${product.price}',style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),),
                     SizedBox(width: 4,),
                     Text('TL', style: TextStyle(
                       fontSize: 10,
                       fontWeight: FontWeight.bold,
                     ),),

                   ],
                 )
               ],
             ),
           ),
          ),
        ],
      ),

    );
  }
}
