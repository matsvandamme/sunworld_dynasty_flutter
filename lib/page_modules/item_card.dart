import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:roomserviceapp/classes/menu_items.dart';

class StoreItem extends StatefulWidget {
  final int index;
  final List list;

  const StoreItem({Key key, this.index, this.list}) : super(key: key);

  @override
  _StoreItemState createState() => _StoreItemState();
}

class _StoreItemState extends State<StoreItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xffaf002c),
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Container(
                constraints: BoxConstraints.tight(Size(60, 60)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage(
                        'assets/images/${widget.list[widget.index].type}/${widget.list[widget.index].imageNumber}.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                widget.list[widget.index].name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${widget.list[widget.index].price.toStringAsFixed(0)} TWD",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ButtonBarTheme(
              data: ButtonBarThemeData(),
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Info',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Add to cart',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
