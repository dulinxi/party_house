import 'package:flutter/material.dart';
import 'package:party_house/src/widget/icon.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _stateBarHeight = MediaQuery.of(context).padding.top;
    final _screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              color: Color.fromRGBO(33, 51, 160, 1),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: _stateBarHeight,
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'http://b-ssl.duitang.com/uploads/item/201811/20/20181120204138_irzdb.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    title: Text(
                      'James Holland',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'james2@.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 4.0,
                          height: 4.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3.0),),
                        ),
                        Container(
                          width: 4.0,
                          height: 4.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(3.0),),
                        ),
                        Container(
                          width: 4.0,
                          height: 4.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(3.0),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 190,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 95,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 170,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      AspectRatio(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(0, 116, 197, 1),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          margin: EdgeInsets.only(right: 20.0),
                                          height: 170,
                                        ),
                                        aspectRatio: 1.9,
                                      ),
                                      AspectRatio(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(255, 84, 122, 1),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          height: 170,
                                        ),
                                        aspectRatio: 1.9,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Text('xxxx')
        ],
      ),
    );
  }
}
