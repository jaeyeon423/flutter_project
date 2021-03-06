import 'package:flutter/material.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: '메모 제목을 적어 주세요.'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: '메모 내용을 적어 주세요.'),
            )
          ],
        ),
      ),
    );
  }
}
