import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Componentes de flutter'),
        ),
        body: ListView (
          children: [
            ListTile(
              title: Text(
                'Entradas', 
                //style: Theme.of(context).textTheme.headlineLarge,
                style: AppTheme.darkTheme.textTheme.headlineLarge,
                ),
              subtitle:  Text(
                'Introduciendo valores',
                style: AppTheme.darkTheme.textTheme.bodySmall,
                ),
              leading:  const Icon(Icons.input),
              trailing: const Icon(Icons.arrow_circle_right_rounded),
            ),
            const Divider (),
            ListTile(
              title: Text(
                'Listview.builder',
                style: AppTheme.darkTheme.textTheme.headlineLarge
                ),
              subtitle: const Text('Lista con scroll infinito'),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.arrow_circle_right_rounded),
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Notificaciones',
                style: AppTheme.darkTheme.textTheme.headlineLarge,
              ),
              subtitle: const Text('Mostrar un notificación'),
              leading: const Icon(Icons.notification_add),
              trailing: const Icon(Icons.arrow_circle_right_rounded),
            ),

          ],
        ),
    );
  }
}