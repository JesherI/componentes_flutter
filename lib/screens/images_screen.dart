import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int indexNavigation = 0;

  openScreen(int index, BuildContext context) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(
            builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(
            builder: (context) => const NotificacionsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [
          cardImage1(),
          imageFade(),
        ],
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
            icon: Icon(Icons.door_back_door_rounded),
            label: 'Salir',
          ),
        ],
      ),
    );
  }

  Card cardImage1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const SizedBox(
              height: 200.0,
              width: 200.0,
              child: Image(
                image: AssetImage('assets/img/Jeshersin.jpg'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Portada Albúm',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox imagen2() {
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Image.network(
          'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/08/67/47/0867478b-d229-35cc-0c84-0fb700ec70e3/0713929138944.png/1200x630bb.jpg'),
    );
  }

  Stack imageFade() {
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            height: 200,
            width: 200,
            image:
                'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/08/67/47/0867478b-d229-35cc-0c84-0fb700ec70e3/0713929138944.png/1200x630bb.jpg',
          ),
        ),
      ],
    );
  }
}
