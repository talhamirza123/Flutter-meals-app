import 'package:f_app/screens/fliters_Screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer
    (
      child: Column
      (
        children: <Widget>
        [
          Container
          (
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text('Cooking Up!', style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
          ),
          // SizedBox(height: 10,),
          ListTile
          (
            leading: Icon(Icons.restaurant, size: 26,),
            title: Text('Meals', 
            style: TextStyle
            (
              fontFamily: 'RobotoCondensed', 
              fontSize: 24,
               fontWeight: FontWeight.bold,
               ),
            ),
            onTap: ()
            {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
            ListTile
          (
            leading: Icon(Icons.settings, size: 26,),
            title: Text('Filter', 
            style: TextStyle
            (
              fontFamily: 'RobotoCondensed', 
              fontSize: 24,
               fontWeight: FontWeight.bold,
               ),
            ),
            onTap: ()
            {
              Navigator.of(context).pushReplacementNamed(FilterScreen.routName);
            },
          )
        ],
      ),
    );
  }
}