import 'package:flutter/material.dart';
import 'package:yedifil/models/shopping.dart';
import 'package:yedifil/view/detail/detail.dart';
import 'package:yedifil/view/home/widget/product_item.dart';

class ProductListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Shopping shopping;
  ProductListView(this.selected,this.callback,this.pageController, this.shopping);

  @override
  Widget build(BuildContext context) {
    final category = shopping.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category.map((e) =>
          ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context,index) =>
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProductDetail(
                          shopping.menu[category[selected]]![index],
                        )),
                      );
                    },
                    child: ProductItem(
                shopping.menu[category[selected]]![index],
              ),
                  ),
              separatorBuilder: (_,index) => SizedBox(height: 15,),
              itemCount: shopping.menu[category[selected]]!.length
          ),
          ).toList(),
      ),
    );
  }
}
