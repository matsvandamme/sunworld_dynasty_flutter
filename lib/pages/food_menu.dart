import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {

  final foodImage = Image.asset('assets/images/food.jpeg', fit: BoxFit.cover);

  @override
  void initState() {
    // adjust the provider based on the image type
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(foodImage.image, context);
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
            title: Text("Food"),
            background: ImageFiltered(
              child: foodImage,
              imageFilter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 1,
              ),
            ),
            //centerTitle: true,
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (builder, index) {
              return StoreItem(
                index: index,
                list: foodList,
              );
            },
            childCount: foodList.length,
          ),
        ),
      ],
    );
  }
}
