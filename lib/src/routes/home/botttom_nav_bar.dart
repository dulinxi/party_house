import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  final Widget child;

  MyBottomBar({Key key, this.child}) : super(key: key);

  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _index = 0;
  Color activeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ClipPath(
        clipper: BottomNavClipper(),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(241, 241, 241, 1),
          ),
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
          child: Row(
            children: [
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .2),
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.send,
                            color: Color.fromRGBO(79, 28, 255, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Send',
                          style: TextStyle(
                            color: _index == 0
                                ? activeColor
                                : Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .2),
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: Color.fromRGBO(254, 94, 26, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Pay',
                            style: TextStyle(
                                color: _index == 1
                                    ? activeColor
                                    : Color.fromRGBO(0, 0, 0, 1)))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .2),
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.credit_card,
                            color: Color.fromRGBO(248, 33, 129, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Top Up',
                            style: TextStyle(
                                color: _index == 2
                                    ? activeColor
                                    : Color.fromRGBO(0, 0, 0, 1)))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _index = 3;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .2),
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.open_in_new,
                            color: Color.fromRGBO(176, 39, 255, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Request',
                            style: TextStyle(
                                color: _index == 3
                                    ? activeColor
                                    : Color.fromRGBO(0, 0, 0, 1)))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(0, 50.0);
    var firstControlPoint = Offset(size.width / 4, 0.0);
    var firstPoint = Offset(size.width / 2, 0.0);
    p.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), 0.0);
    var secondPoint = Offset(size.width, 50.0);
    p.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height);
    p.lineTo(0.0, size.height);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
