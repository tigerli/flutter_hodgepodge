import 'package:flutter/material.dart';
import 'package:flutter_hodgepodge/views/animation_page/children/test_page.dart';
import 'package:flutter_hodgepodge/views/animation_page/children/scale_animation_route.dart';

class AC{
  final String title;
  final String subTitle;
  final Widget page;
  final IconData icon;
  AC({@required this.title, @required this.subTitle, @required this.page, this.icon});
}

List<AC> animation_children = <AC>[
  AC(title: '动画', subTitle: '个人练习动画', page: TestPage()),
  AC(title: '动画基本结构', subTitle: '个人练习动画基本结构', page: ScaleAnimationRoute())
];