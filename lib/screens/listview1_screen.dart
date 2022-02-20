import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options =  const ['Super Samsh','Final Fantasy','Megaman','Yoshi Island','Legend of Zelda'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map(
            (game) => ListTile (
              leading: const Icon(Icons.accessibility),
              title: Text(game),
              trailing: const Icon(Icons.chevron_right),
             ),
          ).toList(),

          // ListTile(
          //   leading: Icon(Icons.accessibility),
          //   title: Text('Hola Mundo'),
          // ),
        ],
      )
    );
  }
}