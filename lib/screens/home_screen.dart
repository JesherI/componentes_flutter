import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/input_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Introduciendo valores',
                style: AppTheme.lightTheme.textTheme.bodySmall),
            leading: const Icon(Icons.input),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            onTap: () {
              final ruta1 = MaterialPageRoute(
                builder: (context) {
                  return const InputsScreen();
                },
              );
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Listview.builder',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Lista con scroll infinito',
                style: AppTheme.lightTheme.textTheme.bodySmall),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            onTap: () {
              final ruta1 = MaterialPageRoute(
                builder: (context) {
                  return const InfiniteScrollScreen();
                },
              );
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar una notificación',
                style: AppTheme.lightTheme.textTheme.bodySmall),
            leading: const Icon(Icons.notification_add),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            onTap: () {
              final ruta1 = MaterialPageRoute(
                builder: (context) {
                  return const NotificacionsScreen();
                },
              );
              Navigator.push(context, ruta1);
            },
          ),
        ],
      ),
    );
  }
}
