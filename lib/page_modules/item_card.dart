import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class StoreItem extends StatefulWidget {
  final int index;
  final List list;

  const StoreItem({Key key, this.index,this.list}) : super(key: key);

  @override
  _StoreItemState createState() => _StoreItemState();
}

class _StoreItemState extends State<StoreItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ExpansionTile(
          initiallyExpanded: false,
          title: Text(widget.list[widget.index].name),
          subtitle: Text(""),
          leading: Text("${widget.list[widget.index].price.toStringAsFixed(0)} TWD"),
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
                      image: AssetImage(
                          'assets/images/Food/${widget.index + 1}.jpeg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
