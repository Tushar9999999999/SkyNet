// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyNet Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SkyNet'),
          backgroundColor: Colors.cyan[200],
        ),
        body: Center(
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                child: new Text('Get stats'),
                onPressed: null,
              ),
              new RaisedButton(
                child: new Text('Basic findings'),
                onPressed: null,
              ),
              new RaisedButton(
                child: new Text('Download stats and findings'),
                onPressed: null,
              ),
            ],
          ),
        ),
        //backgroundColor: Colors.cyan,
      ),
    );
  }
}
