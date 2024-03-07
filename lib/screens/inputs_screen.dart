import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool switchValue = false;
  double sliderValue = 0.0;
  int radioSelected = 0;
  bool isCheked1 = false;
  bool isCheked2 = false;
  bool isCheked3 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children: [
            
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            entradaRadio(),
            Text(
              'Que usas para correr tus Apps',
              style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
                entradasCheck(),
                const ElevatedButton(onPressed: null, child: Text('Guardar',))
              
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Apptheme.primaryColor,
        items:  const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio'),

             BottomNavigationBarItem(
            icon: Icon(Icons.data_exploration),
            label: 'Datos'),

        ],
      )
    );
  }

  TextField entradaNombre() {
    return TextField(
          style: Apptheme.darkTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border:const UnderlineInputBorder(),
            labelText: 'escribe tu nombre',
            labelStyle: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('te gusta flutter',
        style: Apptheme.darkTheme.textTheme.headlineLarge,),
        Switch(
          value: switchValue,
          onChanged: (value){
            setState(() {
              switchValue = value;
            });
          },
        )
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text('indica que tanto te gusta Flutter:',
        style: Apptheme.darkTheme.textTheme.headlineLarge,),
        Slider(min:0.0,
         max:10,
         divisions: 9,
         activeColor: Apptheme.secondaryColor,
         thumbColor: Apptheme.primaryColor,
         inactiveColor: Apptheme.backColor,
         value: sliderValue, 
         onChanged: (value){
          setState(() {
            sliderValue = value;
            print("se cambio el slider: $sliderValue");
          });
        })
      ],
    );
  }

Column entradaRadio(){
  return Column(
    children: [
      Text(
        'Que prefieres para desarrollo movil ',
        style: Apptheme.darkTheme.textTheme.headlineLarge,
      ),
     ListTile(
      title: Text(
        'kotlin',
        style: Apptheme.darkTheme.textTheme.headlineSmall,
      ),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value:1,
          groupValue: radioSelected,
          onChanged: (value){
            setState(() {
                radioSelected = value!;
            print('Seleccion  boton  radio: $radioSelected');
              
            });
          
          }
        ),
      )
     ),
       ListTile(
      title: Text(
        'Flutter',
        style: Apptheme.darkTheme.textTheme.headlineSmall,
      ),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value:2,
          groupValue: radioSelected,
          onChanged: (value){
            setState(() {
                radioSelected = value!;
            print('Seleccion  boton  radio: $radioSelected');
              
            });
          
          }
        ),
      )
     )
    ],

  );
}

Row entradasCheck(){
  return Row(
    children: [
      Text('Navegador',
      style: Apptheme.darkTheme.textTheme.bodySmall,
      ),
      Transform.scale(
        child: Checkbox(
          value:  isCheked1 , 
          onChanged: (value){
            setState(() {
              isCheked1 = value!;
              
            });
          }),
      ),
        Text('Emulador',
      style: Apptheme.darkTheme.textTheme.bodySmall,
      ),
       Transform.scale(
        child: Checkbox(
          value:  isCheked2 , 
          onChanged: (value){
            setState(() {
              isCheked2 = value!;
              
            });
          }),
      ),
       Text('Navegador',
      style: Apptheme.darkTheme.textTheme.bodySmall,
      ), Transform.scale(
        child: Checkbox(
          value:  isCheked2 , 
          onChanged: (value){
            setState(() {
              isCheked2 = value!;
              
            });
          }),
      ),
      
    ],
  );
}

}