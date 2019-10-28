import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AnimatedContainerPageState();
  }
}

class AnimatedContainerPageState extends State<AnimatedContainerPage>{
  double height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: <Widget>[
          AnimatedContainer(
            width: 200,
            height: height,
            color: Colors.black,
            duration: Duration(seconds: 1),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                height = 200;
              });
            },
          )
        ],
      ),
    );
  }
}