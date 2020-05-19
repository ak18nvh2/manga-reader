import 'package:flutter/material.dart';

import 'GView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Most Popular", style: TextStyle(backgroundColor: Colors.white,color: Colors.redAccent),)),
                Tab(child: Text("Recent Updates", style: TextStyle(backgroundColor: Colors.white,color: Colors.redAccent),)),
                Tab(child: Text("Completed", style: TextStyle(backgroundColor: Colors.white,color: Colors.redAccent),)),
              ],
            ),

          ),
          body: TabBarView(
            children: [
              GrView("most"),GrView("recent"),GrView("completed"),
            ],
          ),
        ),
      ),
    );
  }
}
