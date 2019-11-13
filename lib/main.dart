import 'package:flutter/material.dart';
import 'package:flutter_app_test/wrap_page.dart';
import 'safe_area_page.dart';
import 'expand_page.dart';
import 'animated_container_page.dart';
import 'opacity_page.dart';
import 'future_builder_page.dart';
import 'image_page.dart';

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
    return WidgetsListState();
  }
}

class WidgetsListState extends State<WidgetsList> {
  final _widgetNames = [
    'SafeArea',
    'Expand',
    'Wrap',
    'AnimatedContainer',
    'Opacity',
    'FutureBuilder',
    'Image'
  ];

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
        switch (widgetName) {
          case 'SafeArea':
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SafeAreaPage()));
            }
            break;
          case 'Expand':
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExpandPage()));
            }
            break;
          case 'Wrap':
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WrapPage()));
            }
            break;
          case 'AnimatedContainer':
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedContainerPage()));
            }
            break;
          case 'Opacity':
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OpacityPage()));
            }
            break;
          case 'FutureBuilder':
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FutureBuilderPage()));
            }
            break;
          case 'Image':
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagePage()));
            }
            break;
          default:
            {}
            break;
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
