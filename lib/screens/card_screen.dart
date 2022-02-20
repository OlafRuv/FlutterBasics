import 'package:fl_widgets/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Otro hermoso paisaje',imageUrl: 'https://papers.co/wallpaper/papers.co-nh60-sunset-sky-cloud-vacation-nature-red-flare-40-wallpaper.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://www.pixel4k.com/wp-content/uploads/2019/03/colorful-sunset-sky-4k_1551643151.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://ffwallpaper.com/card/sunset-sky/sunset-sky-10.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://img4.goodfon.com/wallpaper/nbig/f/bd/colorful-clouds-rainbow-sky-nebo-oblaka-zakat-sunset.jpg',),
          SizedBox(height: 100),
        ],

      )
    );
  }
}