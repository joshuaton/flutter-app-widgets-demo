import 'package:flutter/material.dart';

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Opacity'),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Opacity(
              opacity: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ],
        ));
  }
}
