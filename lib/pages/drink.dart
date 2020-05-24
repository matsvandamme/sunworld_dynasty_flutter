import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:random_color/random_color.dart';

class Drink extends StatefulWidget {
  @override
  _DrinkState createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  Image foodImage;
  Image dessertImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    super.initState();
    foodImage = Image.asset('assets/images/food.jpeg',
        fit: BoxFit.cover);

    dessertImage = Image.asset('assets/images/dessert.jpeg',
        fit: BoxFit.cover);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(foodImage.image, context);
    precacheImage(dessertImage.image, context);
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
          delegate: SliverChildBuilderDelegate(
            (builder, index) {
              return StoreItem(itemType: "Food", index: index);
            },
            childCount: 10,
          ),
        ),
        SliverAppBar(
          pinned: true,
          expandedHeight: 70,
          flexibleSpace: FlexibleSpaceBar(
            //collapseMode: CollapseMode.parallax,
            title: Text("Dessert"),
            background: ImageFiltered(
              child: dessertImage,
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
              return Text("Test $index");
            },
            childCount: 200,
          ),
        ),
      ],
    );
  }
}
