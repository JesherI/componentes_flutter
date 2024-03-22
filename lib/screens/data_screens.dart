import 'package:flutter/material.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int indexNavigation = 0;
  openScreen(int index, BuildContext context) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        route = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        route = MaterialPageRoute(
            builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        route = MaterialPageRoute(
            builder: (context) => const NotificacionsScreen());
        break;
      case 3:
        route = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textname(widget.datos.nombre!),
            const Divider(),
            likeFluter(widget.datos.gustoFluttrer!),
            const Divider(),
            slider(widget.datos.califflutter!),
            const Divider(),
            radio(widget.datos.movilDev!),
            const Divider(),
            Text(
              'Sueles correr tus apps en:',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            checkbox1(widget.datos.web),
            checkbox2(widget.datos.emulador),
            checkbox3(widget.datos.smartphone),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.primaryColor,
        unselectedItemColor: const Color.fromARGB(237, 25, 40, 48),
        selectedItemColor: Colors.black,
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
      ),
    );
  }

  Text textname(String name) {
    return Text(
      'Hola $name ',
      style: AppTheme.lightTheme.textTheme.headlineMedium,
    );
  }

  Widget likeFluter(bool like) {
    return Text(
      like ? 'Te gusta Flutter' : 'No te gusta Flutter',
      style: AppTheme.lightTheme.textTheme.headlineMedium,
    );
  }

  Widget slider(int sliderValue) {
    return Text(
      'Del 0 al 10, te gusta Flutter un $sliderValue',
      style: AppTheme.lightTheme.textTheme.headlineMedium,
    );
  }

  Widget radio(String radioSelected) {
    return Text(
      radioSelected == "Kotlin" ? 'Prefieres Kotlin' : 'Prefieres Dart',
      style: AppTheme.lightTheme.textTheme.headlineMedium,
    );
  }

  Text checkbox1(bool isChecked1) {
    if (isChecked1 != false) {
      return Text(
        'Navegador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    } else {
      return Text(
        '-',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    }
  }

  Text checkbox2(bool isChecked2) {
    if (isChecked2 != false) {
      return Text(
        'Emulador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    } else {
      return Text(
        '-',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    }
  }

  Text checkbox3(bool isChecked3) {
    if (isChecked3 != false) {
      return Text(
        'Smartphone',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    } else {
      return Text(
        '-',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      );
    }
  }
}
