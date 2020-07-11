import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/item_card.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class DessertMenu extends StatefulWidget {
  @override
  _DessertMenuState createState() => _DessertMenuState();
}

class _DessertMenuState extends State<DessertMenu> {
  Image dessertImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    super.initState();
    dessertImage = Image.asset('assets/images/dessert.jpeg', fit: BoxFit.cover);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(dessertImage.image, context);
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
            title: Text("Desserts"),
            background: ImageFiltered(
              child: dessertImage,
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
                list: dessertList,
              );
            },
            childCount: dessertList.length,
          ),
        ),
      ],
    );
  }
}
