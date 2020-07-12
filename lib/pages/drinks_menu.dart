import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class DrinksMenu extends StatefulWidget {
  @override
  _DrinksMenuState createState() => _DrinksMenuState();
}

class _DrinksMenuState extends State<DrinksMenu> {
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
          pinned: false,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            //collapseMode: CollapseMode.parallax,
            title: Text("Drinks"),
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
