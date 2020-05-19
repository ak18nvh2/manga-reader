import 'package:flutter/material.dart';
class GrView extends StatefulWidget {
  final String ten;
  const  GrView( this.ten);
  @override
  _GrViewState createState() => _GrViewState();
}

class _GrViewState extends State<GrView> {
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width/3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            GridView.builder(
                itemCount: 30,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                              elevation: 10,
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                width: width,
                                height: width-34 ,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: GestureDetector(
                                    child: FadeInImage(
                                      image: NetworkImage(
                                          'http://henhongay.com/blackpink-wallpapers-hd-2019/upload/77979_1 (27).jpg'
                                      ),
                                      fit: BoxFit.cover,
                                      placeholder:
                                      AssetImage('assets/images/loading.gif'),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        GestureDetector(
                          child: Text(
                            widget.ten,
                            style: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
