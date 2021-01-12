import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:memo/screens/edit_page.dart';

class MyHompage extends StatefulWidget {
  MyHompage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times.')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => WritePage()));
        },
        tooltip: '메모를 추가하려면 클릭하세요',
        icon: Icon(Icons.add),
        label: Text("메모 추가"),
      ),
    );
  }
}
