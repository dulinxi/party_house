import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
// import 'package:party_house/src/widget/icon.dart';

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
                  leading: BackButton(
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Your Wallet', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        Text('\$1,750.50', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
                        SizedBox(width: 10.0,),
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
                              Icon(Icons.keyboard_arrow_up, color: Colors.white,),
                              Text('15%', style: TextStyle(color: Colors.white),),
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
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                          height: 180,
                          child: Card(
                              child: Container(
                            padding: EdgeInsets.all(20.0),
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
                                              20.0,
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
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(255, 228, 240, 1),
                              foregroundColor: Color.fromRGBO(248, 33, 129, 1),
                              child: Text('B'),
                            ),
                            title: Text('Banker'),
                            subtitle: Text('Top Up Money',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14.0)),
                            trailing: Text('+\$200'),
                          ),
                          Divider(),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(240, 217, 253, 1),
                              foregroundColor: Color.fromRGBO(176, 39, 254, 1),
                              child: Text('C'),
                            ),
                            title: Text('Charlie Walker'),
                            subtitle: Text('Requested Money',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14.0)),
                            trailing: Text('+\$100'),
                          ),
                          Divider(),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(239, 235, 252, 1),
                              foregroundColor: Color.fromRGBO(79, 28, 255, 1),
                              child: Text('H'),
                            ),
                            title: Text('Harriett Ruiz'),
                            subtitle: Text('Send Money',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14.0)),
                            trailing: Text('-\$125'),
                          ),
                          Divider(),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(239, 235, 252, 1),
                              foregroundColor: Color.fromRGBO(79, 28, 255, 1),
                              child: Text('H'),
                            ),
                            title: Text('Harriett Ruiz'),
                            subtitle: Text('Send Money',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14.0)),
                            trailing: Text('-\$125'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
