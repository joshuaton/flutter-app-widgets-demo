import 'package:flutter/material.dart';
import 'package:flutter_app_test/wrap_page.dart';
import 'safe_area_page.dart';
import 'expand_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: WidgetsList(),
    );
  }
}

class WidgetsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WidgetsListState();
  }
}

class WidgetsListState extends State<WidgetsList> {
  final _widgetNames = ['SafeArea', 'Expand', 'Wrap'];

  Widget _buildWidgetsList() {
    return ListView.separated(
      itemCount: _widgetNames.length,
      itemBuilder: (context, index) {
        return _buildRow(_widgetNames[index]);
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  Widget _buildRow(String widgetName) {
    return GestureDetector(
      child: ListTile(title: Text(widgetName)),
      onTap: () {
        if (widgetName == 'SafeArea') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SafeAreaPage()));
        }else if(widgetName == 'Expand'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ExpandPage()));
        }else if(widgetName == 'Wrap'){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WrapPage()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: _buildWidgetsList(),
    );
  }
}
