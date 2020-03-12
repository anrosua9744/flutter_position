import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '플루터 앱',
        home: Scaffold(
          appBar: AppBar(title: Text("앱 타이틀")), // 앱의 상단 타이틀
          body: Row(
            children: <Widget>[
                Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 60.80,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlutterLogo(
                    size: 160.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: FlutterLogo(
                    size: 100.40,
                  ),
                ),
            ],
          )
        )
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 라우터"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 눌렀을 때 첫 번째 route로 되돌아 갑니다.
            Navigator.pop(context);
          },
          child: Text('돌아가기'),
        ),
      ),
    );
  }
}
