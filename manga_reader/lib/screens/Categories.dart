import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Categories",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("aaaaaaa aaaaaa aaaaaaaaa aaaaaa",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 24,),
                    )
                  ],
              );
            }));
  }
}
