// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'SkyNetHome',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyNet Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SkyNet'),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              new ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatsView()),
                  );
                },
                child: new Text('View stats'),
              ),
              new ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FindingsView()),
                  );
                },
                child: new Text('View findings'),
              ),
              new ElevatedButton(
                onPressed: null,
                child: new Text('Download raw stats'),
              ),
              new ElevatedButton(
                onPressed: null,
                child: new Text('Download findings'),
              ),
            ],
          ),
        ),
        body: Center(
            /*
            should be camera view / etc
          ),*/
            ),
        //backgroundColor: Colors.cyan,
      ),
    );
  }
}

class StatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Stats'),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: new ElevatedButton(
                child: new Text('STATS TO BE IMPLEMENTED'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )));
  }
}

class FindingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Findings'),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: new ElevatedButton(
                child: new Text('FINDINGS TO BE IMPLEMENTED'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )));
  }
}
