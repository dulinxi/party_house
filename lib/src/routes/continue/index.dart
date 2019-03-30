import 'package:flutter/material.dart';

class ContinuePage extends StatefulWidget {
  final Widget child;

  ContinuePage({Key key, this.child}) : super(key: key);

  _ContinuePageState createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(33, 51, 160, 1),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(20.0),
        child: Card(
            child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(240, 236, 252, 1),
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
                height: 20.0,
              ),
              Text('Send successfully to HaliBoTe'),
              SizedBox(
                height: 20.0,
              ),
              Text('\$100', style:TextStyle(color: Colors.green, fontSize: 20.0)),
              ListTile(
                leading: GestureDetector(
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
                ),
                subtitle: Text(
                  'james2@.com',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              Wrap(
                children: <Widget>[
                  Text(
                    'Transaction done on 12 January 2018.your reference number is 03492390',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Color.fromRGBO(236, 42, 96, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CONTINUE',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        )),
      ),
      )
    );
  }
}
