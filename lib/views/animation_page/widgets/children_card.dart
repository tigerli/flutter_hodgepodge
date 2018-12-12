import 'package:flutter/material.dart';

class ChildrenCard extends StatelessWidget{
  final String title;
  final String subTitle;
  final IconData icons;
  final Widget page;
  //点击后跳转到对应的demo
  void _launchPage(BuildContext context) {
//    Timeline.instantSync('Start Transition', arguments: <String, String>{
//      'form': '/',
//      'to': '',
//    });
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return page;
    }) );
  }

  ChildrenCard({@required this.title, @required this.subTitle, @required this.page, this.icons});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: RawMaterialButton(
        padding: EdgeInsets.zero,
        onPressed: (){
          _launchPage(context);
        },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
