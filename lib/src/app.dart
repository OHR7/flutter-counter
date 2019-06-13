import 'package:counter/src/pages/counter_page.dart';
import 'package:counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {

  @override
  build( context ) {

    return MaterialApp(
      home: 
      Center(
        child: CounterPage(),
      )

    );
  }
}