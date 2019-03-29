import 'package:flutter/material.dart';

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