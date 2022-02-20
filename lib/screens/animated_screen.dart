import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  
  void changeShape(){
    var rng = Random();
    _width = rng.nextInt(150).toDouble() + 100;
    _height = rng.nextInt(150).toDouble() + 100;
    _color = Colors.primaries[rng.nextInt(Colors.primaries.length)];
    _borderRadius =  BorderRadius.circular(rng.nextInt(10)+10.toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
           width: _width,
           height: _height,
           decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
           ), 
           duration: const Duration(milliseconds: 400),
           curve: Curves.easeOutCubic,
         ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_fill_rounded, size: 35,color: Colors.white,),
        onPressed: (){
          changeShape();
        },
      ),




    );
  }
}