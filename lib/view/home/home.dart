import 'package:flutter/material.dart';
import 'package:yedifil/constants/colors.dart';
import 'package:yedifil/view/home/widget/product_list.dart';
import 'package:yedifil/view/home/widget/shpping_info.dart';

import '../../models/shopping.dart';
import '../../widgets/custom_app_bar.dart';
import 'widget/product_list_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final shopping = Shopping.generateShopping();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_new_outlined,
            Icons.search_outlined,
          ),
          ShoppingInfo(),
          ProductList(selected,
              (int index){
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
              }, shopping),
          Expanded(
              child:ProductListView(
                selected,
                  (int index) {
                  setState(() {
                    selected = index;
                  });
                  },
                pageController,
                shopping,
              ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: shopping.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color:kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                      color: kPrimaryColor,
                      padding: 2,
                      width: 2,
                    ),
                  ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 0,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size:30,
        ),
      ),
    );
  }
}
