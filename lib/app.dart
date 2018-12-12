import 'package:flutter/material.dart';
import 'routers/routers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget{
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App>{
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    @override
    void initState(){
      super.initState();
    }

    return Scaffold(
      body: pages[_currentIndex].widget,
//      floatingActionButton: new FloatingActionButton(
//        onPressed: () {
//          print('dsa');
////          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
////
////          }));
//        },
//        backgroundColor: Color.fromARGB(255, 115, 164, 161),
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//        elevation: 2.0,
//      ), // T
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // his
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: pages.map((Pages page){
            return IconButton(
                icon: Icon(page.icon),
                color: _currentIndex == page.currentIndex?currentColor:defaultColor,
                tooltip: page.tooltip,
                onPressed: (){
                  setState(() {
                    _currentIndex = page.currentIndex;
                  });
                })
            ;
          }).toList(),
        ),
      ),
    );
  }
}