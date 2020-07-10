import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Image foodImage;
  Image drinkImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    super.initState();
    foodImage = Image.asset('assets/images/food.jpeg', fit: BoxFit.cover);

    drinkImage = Image.asset('assets/images/drink.jpeg', fit: BoxFit.cover);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(foodImage.image, context);
    precacheImage(drinkImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 70,
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
          delegate: SliverChildBuilderDelegate((builder, index) {
            if (menuList[index].type == "food") {
              return StoreItem(index: index);
            } else {
              return null;
            }
          }),
        ),
        /*SliverAppBar(
          pinned: true,
          expandedHeight: 70,
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
          delegate: SliverChildBuilderDelegate(
                (builder, index) {
              return StoreItem(index: index);
            },
            childCount: 10,
          ),
        ),*/
      ],
    );
  }
}
