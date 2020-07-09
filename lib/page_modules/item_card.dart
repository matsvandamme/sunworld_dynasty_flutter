import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final String itemType;
  final int index;

  StoreItem({@required this.itemType, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ExpansionTile(
          initiallyExpanded: false,
          title: Text("Pieter's Pizza "),
          subtitle: Text("test"),
          trailing: Text("350 TWD"),
          backgroundColor: Color(0xfff5f5f5),
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Food/1.jpeg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
