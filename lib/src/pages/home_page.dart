import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final myStyle = new TextStyle ( fontSize: 30.0 );

  final count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Clicks:', style: myStyle),
            Text('$count', style: myStyle),
          ],
        )
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello world');
          // count = count + 1;
        },
        child: Icon( Icons.add ),
      ),
    );
  }
}
