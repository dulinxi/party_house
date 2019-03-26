import 'package:flutter/material.dart';
import 'widget/icon.dart';

class PartyHouse extends StatelessWidget {
  // build App theme
  ThemeData _buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party house',
      theme: ThemeData(
        accentColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black54),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(iconfont(0xe601)),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Events'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: AspectRatio(
                            child: Card(
                              elevation: 2,
                              child: Center(
                                child: Text('All events'),
                              ),
                            ),
                            aspectRatio: 1,
                          ),
                        ),
                        Expanded(
                          child: AspectRatio(
                            child: Card(
                              elevation: 2,
                              child: Center(
                                child: Text('Birthday'),
                              ),
                            ),
                            aspectRatio: 1,
                          ),
                        ),
                        Expanded(
                          child: AspectRatio(
                            child: Card(
                              elevation: 2,
                              child: Center(
                                child: Text('Aniversery'),
                              ),
                            ),
                            aspectRatio: 1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
