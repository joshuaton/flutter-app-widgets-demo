import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 20,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
          Container(
            width: 20,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
          Expanded(
            child: Container(
              width: 20,
              height: 50,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            ),
          ),
          Container(
            width: 20,
            height: 50,
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
        ],
      ),
    );
  }
}
