import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Wrap(
        children: <Widget>[
          Container(
            width: 150,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Container(
            width: 150,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Container(
            width: 150,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          )
        ],
      ),
    );
  }
}
