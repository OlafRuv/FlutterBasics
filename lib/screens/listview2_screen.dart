import 'package:fl_widgets/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options =  const ['Super Samsh','Final Fantasy','Megaman','Yoshi Island','Legend of Zelda'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          leading: const Icon(Icons.accessibility_new),
          onTap: (){
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}