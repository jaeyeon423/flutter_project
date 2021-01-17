import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'write_page.dart';

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
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  '메모메모',
                  style: TextStyle(fontSize: 36, color: Colors.blue),
                ),
              ),
            ],
          ),
          ...LoadMemo()
        ],
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

LoadMemo() {
  List<Widget> memolist = [];
  memolist.add(Container(
    color: Colors.purpleAccent,
    height: 100,
  ));
  return memolist;
}
