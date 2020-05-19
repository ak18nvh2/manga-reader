import 'package:flutter/material.dart';
import 'package:manga_reader/screens/Categories.dart';
import 'package:manga_reader/screens/More.dart';
import 'package:manga_reader/screens/home.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "Sans"),)
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.category),
        title: new Text('Categories',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "Sans"),),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          title: Text('More',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "Sans"),)
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(), Categories(), More()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text("Manga Reader", style: TextStyle(color: Colors.white),),
        leading: IconButton(icon: Icon(Icons.public), onPressed: null),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null)
        ],

      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
