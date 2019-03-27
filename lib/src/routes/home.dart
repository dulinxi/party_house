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
                  Container(
                    height: 250,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: ,
                          child: Container(
                            decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 116, 197, 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            margin: EdgeInsets.all(20.0),
                            height: 150,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 50,
                            color: Colors.white,
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
