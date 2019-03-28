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
      backgroundColor: Colors.white,
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
                      Icons.notifications,
                      color: Colors.white,
                      size: 20.0,
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
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        ),
                        Container(
                          width: 4.0,
                          height: 4.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        ),
                        Container(
                          width: 4.0,
                          height: 4.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
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
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 180,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      BankCard(),
                                      BankCard(
                                        carcColor: Colors.orange,
                                      ),
                                      BankCard(
                                          carcColor:
                                              Color.fromRGBO(255, 84, 122, 1)),
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: IntrinsicHeight(
          child: ClipPath(
            clipper: MyClipper(),
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
                                Icons.home,
                                color: Color.fromRGBO(79, 28, 255, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Send',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
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
                                Icons.card_giftcard,
                                color: Color.fromRGBO(254, 94, 26, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Pay',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
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
                                Icons.card_membership,
                                color: Color.fromRGBO(248, 33, 129, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Top Up',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
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
                                Icons.share,
                                color: Color.fromRGBO(176, 39, 255, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Request',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  final Color carcColor;
  BankCard({Key key, this.carcColor = const Color.fromRGBO(0, 116, 197, 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: carcColor,
      child: AspectRatio(
        child: Container(
          padding: EdgeInsets.all(16.0),
          // height: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      Text(
                        'SBI',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Debit Card',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Image.asset('assets/images/Card_Chip.png', width: 40),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '****',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                  Text(
                    '****',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                  Text(
                    '****',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                  Text(
                    '7589',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Du Jun',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '13/21',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'CARD HOLDER',
                    style: TextStyle(letterSpacing: 1.0, color: Colors.white),
                  ),
                  Text(
                    'VISA',
                    style: TextStyle(letterSpacing: 2.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        aspectRatio: 1.9,
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
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
