import 'package:fl_widgets/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _activeValue = true;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Sliders & Checks')
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            children: [

              Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: _activeValue 
                ? (value){
                  _sliderValue = value;
                  setState(() { });
                }
                : null
              ),
              const SizedBox(height: 20),

              // Checkbox(
              //   value: _checkValue, 
              //   activeColor: AppTheme.primary,
              //   onChanged: (value){
              //     _checkValue = value ?? true;
              //     setState(() { });
              //   }
              // ),

              CheckboxListTile(
                value: _activeValue, 
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                onChanged: (value){
                  _activeValue = value ?? true;
                  setState(() { });
                }
              ),

              // Switch(
              //   value: _switchValue, 
              //   activeColor: AppTheme.primary,
              //   onChanged: (value){
              //     _switchValue = value;
              //     setState(() { });
              //   }
              // ),

              SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                value: _activeValue, 
                activeColor: AppTheme.primary,
                onChanged: (value){
                  _activeValue = value;
                  setState(() { });
                }
              ),

              
              const AboutListTile(),

              Expanded(
                child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage('https://i.pinimg.com/originals/7f/6b/22/7f6b2245d8b4a83bbfa73191fa25755f.jpg'),
                    // image: const NetworkImage('https://cdn-3.expansion.mx/01/d9/38db964e40a5bf4167c85f487a96/elwbeczvoaissv9.jpg'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                ),
              ),
            ]
          ),
      ),
    );
  }
}