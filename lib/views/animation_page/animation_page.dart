import 'package:flutter/material.dart';
import 'widgets/children_card.dart';
import 'package:flutter_hodgepodge/routers/animation_children.dart';

class AnimationPage extends StatefulWidget{
  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<AnimationPage>{
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: animation_children.map((AC ac){
          return ChildrenCard(title: ac.title, subTitle: ac.subTitle, page: ac.page);
        }).toList(),
      )
    );
  }
}