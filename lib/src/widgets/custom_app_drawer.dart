import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.amber),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: SizedBox(
              height: 70,
              child: Center(
                child: Text("imagem"),
              ),
            ),
          )
        ],
      ),
    );
  }
}