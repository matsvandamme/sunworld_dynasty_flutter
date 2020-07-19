import 'package:flutter/material.dart';
import 'package:roomserviceapp/page_modules/page_view.dart';
import 'package:roomserviceapp/pages/placeholder_logout.dart';

class Store extends StatefulWidget {
  Store({Key key}) : super(key: key);

  @override
  _BackdropPageState createState() => new _BackdropPageState();
}

class _BackdropPageState extends State<Store>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Stack(children: [
      new PageViewWidget(),
      new PageIndicator(),
    ]),
    PlaceholderLogout(),
    null,
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Color(0xff780003),
              primaryColor: Colors.white30,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            // Set the value of _currentIndex to currentIndex
            onTap: onTabTapped,
            // Set the onTabTapped function we created earlier
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.fastfood),
                title: new Text("Menu"),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text("My Profile"),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.chat),
                title: new Text("Frontdesk"),
              )
            ],
          ),
        ),
        body: _children[_currentIndex],
      ),
    );
  }
}
