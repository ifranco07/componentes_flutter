import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; //controlar el widget switch
  double sliderValue = 0.0; 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Entradas'),
    ),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          entradaNombre(),
          entradaSwitch(),
          entradaSlider(),
          const ElevatedButton(
            onPressed: null, 
            child: Text(
              'Guardar',
              )),
            ],
          ),
       ),
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.primaryColor,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Inicio',
             ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_exploration),
            label:'Inicio',
             ),
        ]
        ),
     );
  }

  TextField entradaNombre() {
    return TextField(
        style: AppTheme.lightTheme.textTheme.headlineMedium,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: 'Escribe tu nombre: ',
          labelStyle: AppTheme.lightTheme.textTheme.headlineLarge, 
        ),
      );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: switchValue,
          onChanged:(value) {
            setState(() {
              switchValue = value;
            });
          }),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Indica que tanto te gusta flutter: ',
         style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: AppTheme.secondaryColor,
          thumbColor: AppTheme.primaryColor,
          inactiveColor: AppTheme.backColor,
          value: sliderValue, 
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value){
            setState(() {
               sliderValue = value;
               print('Se cambio el slider: $sliderValue');
          });
        }),
      ],
    );
  }
}