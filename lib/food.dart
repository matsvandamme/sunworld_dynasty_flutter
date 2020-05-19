import 'package:flutter/material.dart';
import 'package:roomserviceapp/menu_item.dart';
import 'package:roomserviceapp/store_item.dart';

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ///First sliver is the App Bar
          SliverAppBar(
            ///Properties of app bar
            backgroundColor: Color(0xffe74955),
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Food'),
              background: Image.asset(
                'assets/images/pexels-photo-2147491.jpeg',
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
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                return Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/images/Food/${index+1}.jpeg',
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  margin: EdgeInsets.all(3),
                );
              },
              // Or, uncomment the following line:
              childCount: foodList.length,
            ),
          )
        ],
      ),
    );
  }
}
