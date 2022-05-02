import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';

import '../../../models/shopping.dart';

class ShoppingInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final shopping = Shopping.generateShopping();
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(shopping.name,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(shopping.security, style: TextStyle(color: Colors.white),)
                  ),
                  SizedBox(width: 10,),
                  Text(shopping.cargo,style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.4),
                  ),),
                  SizedBox(width: 10,),
                  Text(shopping.label,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.4),
                  ),),
                ],
              ),
            ],
          ),
          ClipRRect(
            //borderRadius: BorderRadius.circular(20),
            child: Image.asset(shopping.logoUrl,width: 60,),
          )
        ],
      ),
      SizedBox(height: 5,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('"${shopping.desc}"',style: TextStyle(
            fontSize: 16,
          ),),
          Row(
            children: [
              Icon(Icons.star_outline,color: kPrimaryColor, ),
              SizedBox(width: 4,),
              Text('${shopping.score}',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: 4,),
            ],
          )
        ],
      )
      ],
     ),
    );
  }
}
