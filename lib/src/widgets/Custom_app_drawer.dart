import 'package:flutter/material.dart';
import 'package:utilidades/src/app/app_menu.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
           color: Colors.amber,
           height: 100,
            alignment: Alignment.center,
            child : Padding(
              padding: EdgeInsets.only(top:30),
              child: Center(
                child: Image.asset('assets/images/logs.png', width: 150,),
              ),
            ),
          ),
          ...appMenuItems.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: (){
                Navigator.pushReplacementNamed(context, item.route);
              },
            )
          )
        ],
      ),
    );
  }
}