import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FutureBuilderPageState();
  }
}

class FutureBuilderPageState extends State<FutureBuilderPage> {
  String text = 'text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: FutureBuilder(
        future: http.get('https://test.igame.qq.com/monitor/page_start_up'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            http.Response response = snapshot.data;
            List data = jsonDecode(response.body);
            if (snapshot.hasError) {
              return Text('加载失败');
            }
            return Text(data[0]['kv']);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
