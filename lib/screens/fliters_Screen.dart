
import 'package:f_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  
  static const routName = '/filters';
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar
      (
        title: 
        Text
        ('Hello World'),
        ),
      drawer: MainDrawer(),
      body: Center(child: Text('hello'),),
      
    );
  }
}