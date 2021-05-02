// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'SkyNetHome',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  //StatefulWidget {
  /*Widget webcam;
  VideoElement webcam_video;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    webcam_video = VideoElement();
    ui.platformViewRegistry.registerViewFactory(
        'webcamVideoElement', (int viewId) => webcam_video);
    webcam = HtmlElementView(key: UniqueKey(), viewType: 'webcam_video');

    window.navigator.getUserMedia(video: true).then((MediaStream stream) {
      webcam_video.srcObject = stream;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    double newWidth = screen_width * 0.85;
    double newHeight = screen_height * 0.80;

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
              new MaterialButton(
                hoverColor: Colors.lightBlue[100],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatsView()),
                  );
                },
                child: new Text('View stats'),
              ),
              new MaterialButton(
                hoverColor: Colors.lightBlue[100],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FindingsView()),
                  );
                },
                child: new Text('View findings'),
              ),
              new MaterialButton(
                hoverColor: Colors.lightBlue[100],
                onPressed: null,
                child: new Text('Download raw stats'),
              ),
              new MaterialButton(
                hoverColor: Colors.lightBlue[100],
                onPressed: null,
                child: new Text('Download findings'),
              ),
            ],
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              'Camera view',
              style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.normal,
              ),
            ),
            Container(
              width: newWidth,
              height: newHeight,
              color: Colors.blueGrey[100],
              //child: webcam,
            )
          ],
        )

            /*
            should be camera view / etc
          ),*/

            ),
        //backgroundColor: Colors.cyan,
        /*floatingActionButton: FloatingActionButton(
          onPressed: () => webcam_video.srcObject.active
              ? webcam_video.play()
              : webcam_video.pause(),
          child: Icon(Icons.camera_alt),
        ),*/
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
