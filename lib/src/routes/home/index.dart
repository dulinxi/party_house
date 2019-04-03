import 'package:flutter/material.dart';
// import 'package:party_house/src/widget/icon.dart';
import 'bank_card.dart';
import 'botttom_nav_bar.dart';

import 'package:party_house/src/routes/financial/index.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final GlobalKey<ScaffoldState> _scaffordtKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final _stateBarHeight = MediaQuery.of(context).padding.top;
    // final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffordtKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Text('侧边栏'),
      ),
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
                  leading: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return FinancialPage();
                        }
                      ));
                    },
                    child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/avator.jpg',
                        width: 40,
                        height: 40,
                      ),
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
                  trailing: IconButton(
                    icon: Icon(Icons.notifications),
                    color: Colors.white,
                    onPressed: (){
                      _scaffordtKey.currentState.openDrawer();
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Recent Transactions',
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
                  bottom: 50,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 80.0),
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
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    child: MyBottomBar()
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
