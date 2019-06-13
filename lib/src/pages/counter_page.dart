import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  
  @override
  createState() => _CounterPageState();

}


class _CounterPageState extends State<CounterPage>{
  
  final _myStyle = new TextStyle ( fontSize: 30.0 );
  int _count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Clicks:', style: _myStyle),
            Text('$_count', style: _myStyle),
          ],
        )
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0 ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero), 
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox( width: 5.0 )
        ),
        FloatingActionButton(
          child: Icon(Icons.remove), 
          onPressed: _substract,
        ),
        SizedBox( width: 5.0 ),
        FloatingActionButton(
          child: Icon(Icons.add), 
          onPressed: _add,
        )
      ],
    );
  }

  void _add() {
    setState( () => _count++ );
  }

  void _substract() {
    if (_count >= 1) {
      setState( () => _count-- );
    }
  }

  void _reset() {
    setState( () => _count = 0 );
  }
}