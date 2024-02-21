import 'package:componentes/screens/inputs_screen.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children:  <Widget>[
          ListTile(
            title: Text ('Entradas',
            style:AppTheme.lightTheme.textTheme.headlineLarge,
            ) ,
            subtitle:   Text('Intruduciendo  valores',style: AppTheme.lightTheme.textTheme.bodySmall,
),
            leading: const Icon(Icons.power_input),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            onTap: (){
              final ruta1 = MaterialPageRoute(builder: (context){
                return const ImputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
              ListTile(
            title: Text ('Listview.builder',style:AppTheme.lightTheme.textTheme.headlineLarge,
) ,
            subtitle: const Text('Lista  con escroll infinito'),
            leading: const Icon(Icons.price_check_sharp),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
       
              ),
              const Divider(),
            ListTile(
            title: Text ('Notificaciones',style:AppTheme.lightTheme.textTheme.headlineLarge,
) ,
            subtitle: const Text('Mostrar una notificacion '),
            leading: const Icon(Icons.beach_access),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
              )
        ],
        
      )
      );
  }
}