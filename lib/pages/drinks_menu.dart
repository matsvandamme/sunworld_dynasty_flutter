import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  Image drinkImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    super.initState();
    drinkImage = Image.asset('assets/images/drink.jpeg', fit: BoxFit.cover);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(drinkImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            //collapseMode: CollapseMode.parallax,
            title: Text("Drink"),
            background: ImageFiltered(
              child: drinkImage,
              imageFilter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 1,
              ),
            ),
            //centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((builder, index) {
            return StoreItem(
              index: index,
              list: drinkList,
            );
          }, childCount: drinkList.length),
        ),
      ],
    );
  }
}
