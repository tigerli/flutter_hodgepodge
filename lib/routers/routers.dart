import 'package:flutter/material.dart';
import 'package:flutter_hodgepodge/views/layout_page/layout_page.dart';
import 'package:flutter_hodgepodge/views/demo_page/demo_page.dart';
import 'package:flutter_hodgepodge/views/animation_page/animation_page.dart';
import 'package:flutter_hodgepodge/views/setting_page/setting_page.dart';

class Pages{
  final int currentIndex;
  final IconData icon;
  final Widget widget;
  final String tooltip;
  Pages(this.currentIndex, this.icon, this.widget, this.tooltip);
}

// 按钮选中按钮颜色
final Color currentColor = Color.fromARGB(255, 255, 116, 113);
// 未选中按钮颜色
final Color defaultColor = Color.fromARGB(255, 115, 164, 161);

// 中间按钮导航

// 底部按钮导航
List<Pages> pages = [
  Pages(0, Icons.apps, LayoutPage(), '布局'),
  Pages(1, Icons.satellite, DemoPage(), '演示'),
  Pages(2, Icons.sentiment_very_satisfied, AnimationPage(), '动画'),
  Pages(3, Icons.settings, SettingPage(), '环境')
];