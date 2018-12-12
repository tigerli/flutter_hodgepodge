import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app.dart';

void main() => runApp(
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      // 去掉按键水波纹
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
    home: App(),
  )
);

//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: new AppBar(
//        title: Text('flutter_screenutil'),
//      ),
//      body: Center(
//        child: Text('flutter_screenutil'),
//      ),
//    );
//  }
//}
