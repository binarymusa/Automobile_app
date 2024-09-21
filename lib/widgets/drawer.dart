import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget{
  const EndDrawer({super.key,});

  @override
  Widget build(BuildContext context){
    return Drawer(
        child: ListView(
          // clipBehavior: Clip.none,
          padding: EdgeInsets.zero,
          children:const  <Widget>[
            DrawerHeader(              
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title:  Text('Settings'),
              // onTap: () {},
            ),
            ListTile(
              title: Text('About us'),
              // onTap: () {},
            ),
          ],
        ),
      );     
  }
}