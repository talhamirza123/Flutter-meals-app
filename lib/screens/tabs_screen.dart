import 'package:f_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

import './fliters_Screen.dart';
import './categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  final List<Map<String, Object>> _pages =
   [
    
    { 'page':  CategoriesScreen(), 'title': 'Categories',},
     { 'page':  FavoritesScreen(), 'title': 'Favourites',},
    
  ];
  
    int _selectpageindex = 0;

  void _selectpage (int index)
   {
    setState(() {
      _selectpageindex = index;
    });
    
  } 
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectpageindex]['title']),
       
      ),
      drawer: MainDrawer(),
         
         body: _pages[_selectpageindex]['page'],
         bottomNavigationBar: 
         BottomNavigationBar
         (
           
           onTap: _selectpage,
           
           backgroundColor: Theme.of(context).primaryColor,
           unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectpageindex,
          type: BottomNavigationBarType.shifting,
           items: 
           [
             BottomNavigationBarItem
             (
               icon: Icon(Icons.star),
               title: Text('Categories'),
              ),
             BottomNavigationBarItem
             (
               icon: Icon(Icons.star, ),
                title: Text('Favourites'),
      
              
              )
           ],
           ),
    );
  }
}
