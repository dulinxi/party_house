import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:party_house/src/routes/continue/index.dart';

class FinancialPage extends StatefulWidget {
  @override
  createState() => _FinancialPageState();
}

class _FinancialPageState extends State<FinancialPage> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  @override
  Widget build(BuildContext context) {
    final _stateBarHeight = MediaQuery.of(context).padding.top;
    // final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(248, 249, 254, 1),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            color: Color.fromRGBO(33, 51, 160, 1),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Your Wallet',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '\$1,750.50',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color.fromRGBO(255, 84, 132, 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                Text(
                                  '15%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
                          color: Color.fromRGBO(248, 249, 254, 1),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
                          height: 180,
                          child: Card(
                              child: Container(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Container(
                                    width: 45,
                                    height: 45,
                                    alignment: Alignment.center,
                                    child: AnimatedCircularChart(
                                      key: _chartKey,
                                      size: Size(45.0, 45.0),
                                      initialChartData: <CircularStackEntry>[
                                        CircularStackEntry(
                                          <CircularSegmentEntry>[
                                            CircularSegmentEntry(
                                              80.0,
                                              Colors.green[400],
                                              rankKey: 'completed',
                                            ),
                                            CircularSegmentEntry(
                                              16.0,
                                              Colors.white,
                                              rankKey: 'remaining',
                                            ),
                                          ],
                                          rankKey: 'progress',
                                        ),
                                      ],
                                      chartType: CircularChartType.Radial,
                                      percentageValues: true,
                                      holeLabel: '80',
                                      labelStyle: new TextStyle(
                                        color: Colors.green[600],
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  title: Text('Good Financial'),
                                  subtitle: Text(
                                    'Your financial condition good',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'View Statistic',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(132, 24, 194, 1)),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.black38,
                                    ),
                                  ],
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
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Detail Infomation',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, PageRouteBuilder(
                                pageBuilder: (BuildContext context, Animation animtion, Animation secondaryAnimation) {
                                  return FadeTransition(
                                    opacity: animtion,
                                    child: ContinuePage()
                                  );
                                }
                              ));
                            },
                            child: Hero(
                              tag: 'miniBox',
                              child: Container(
                              margin: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: AspectRatio(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        color: Color.fromRGBO(0, 0, 0, .15),
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(240, 236, 252, 1),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, .2),
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
                                        'Send Money',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14.0),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        '\$80.50',
                                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                aspectRatio: 1,
                              ),
                            ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: AspectRatio(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      color: Color.fromRGBO(0, 0, 0, .15),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(254, 244, 241, 1),
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
                                    Text(
                                      'Pay items',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '\$150.15',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                              aspectRatio: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: AspectRatio(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      color: Color.fromRGBO(0, 0, 0, .15),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(250, 231, 240, 1),
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
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '\$60.32',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                              aspectRatio: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: AspectRatio(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      color: Color.fromRGBO(0, 0, 0, .15),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(244, 229, 252, 1),
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
                                    Text(
                                      'Request Money',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '\$90.20',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                              aspectRatio: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
