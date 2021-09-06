import 'package:flutter/material.dart';

class bottom_navigation_insta extends StatefulWidget {
  //const bottom_navigation_insta({Key key}) : super(key: key);

  @override
  _bottom_navigation_instaState createState() =>
      _bottom_navigation_instaState();
}

class _bottom_navigation_instaState extends State<bottom_navigation_insta> {
  int temp_currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
        ),
        leading: Icon(Icons.photo_camera),
        centerTitle: true,
        actions: [
          Icon(Icons.send),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: temp_currentIndex,
        selectedFontSize: 20,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Camera'),
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Person'),
              backgroundColor: Colors.purple),
        ],
        onTap: (index) {
          print('touch this $index');
          setState(() {
            temp_currentIndex = index;
            print('touch this this $temp_currentIndex');
          });
        },
      ),
    );
  }
}
