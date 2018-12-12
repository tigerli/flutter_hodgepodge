import 'package:flutter/material.dart';

class TestPage extends StatefulWidget{
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestPage>{
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,// 列表项固定高度。显式指定高度（性能消耗小）
            itemBuilder: (context, index){
              return ListTile(title: Text('$index'),);
            }
        )
    );
  }
}