import 'package:flutter/material.dart';
import 'package:roomserviceapp/store_item.dart';

class Drinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ///First sliver is the App Bar
          SliverAppBar(
            ///Properties of app bar
            backgroundColor: Color(0xffe74955),
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 200,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/pexels-photo-667986.jpeg',
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              ///no.of items in the horizontal axis
              crossAxisCount: 2,
            ),

            ///Lazy building of list
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                /// To convert this infinite list to a list with "n" no of items,
                /// uncomment the following line:
                if (index > 10) return null;
                return StoreItem();
              },

              /// Set childCount to limit no.of items
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
