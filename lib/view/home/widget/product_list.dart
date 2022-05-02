import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import '../../../models/shopping.dart';

class ProductList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Shopping shopping;
  ProductList(this.selected,this.callback,this.shopping);

  @override
  Widget build(BuildContext context) {
    final category = shopping.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index ? kPrimaryColor : Colors.white,
              ),
              child: Text(
                category[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          separatorBuilder: (_,index) => SizedBox(width: 10,),
          itemCount: category.length,
      ),

    );
  }
}
