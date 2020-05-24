import 'package:flutter/material.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class Food extends StatelessWidget {
  final pageType = "Food";

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
            expandedHeight: 150,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              title: Text(pageType),
              background: Image.asset(
                'assets/images/${pageType.toLowerCase()}.jpeg',
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
              // ignore: missing_return
              (BuildContext context, int index) {
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                if (foodList[index].type == pageType.toLowerCase()) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/$pageType/${foodList[index].imageNumber}.jpeg',
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2,
                    margin: EdgeInsets.all(3),
                  );
                }
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
