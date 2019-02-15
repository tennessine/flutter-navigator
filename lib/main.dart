import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '页面跳转返回数据示例',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return SecondPage();
      },
    ));
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转返回数据示例'),
        elevation: 0.0,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _navigateToSecondPage(context);
          },
          child: Text('跳转到第二个页面'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择一条数据'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Hi google');
                },
                child: Text('Hi google'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Hi flutter');
                },
                child: Text('Hi flutter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
