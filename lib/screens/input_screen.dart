import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0;
  int radioSelected = 0;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int indexNavigation = 0;

  openScreen(int index, BuildContext context){
    MaterialPageRoute ruta = 
      MaterialPageRoute(builder: (context) => const HomeScreen());
    switch(index){
      case 0:
        ruta =  MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta =  MaterialPageRoute(builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta =  MaterialPageRoute(builder: (context) => const NotificacionsScreen());
        break;
      case 3:
        ruta =  MaterialPageRoute(builder: (context) => const ImagesScreen());
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
            entradaRadio(),
            Text(
              '¿Que usas para correr tus apps?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaCheck1(),
            const ElevatedButton(
              onPressed: null,
              child: Text('Guardar'),
            ),
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
            icon: Icon(Icons.door_back_door_rounded),
            label: 'Salir',
          ),
        ],
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

  Row entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            })
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Indica qué tanto te gusta Fluter: ',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10,
          divisions: 10,
          label: '${sliderValue.round()}',
          activeColor: AppTheme.secondaryColor,
          thumbColor: AppTheme.primaryColor,
          inactiveColor: AppTheme.backColor2,
          value: sliderValue,
          onChanged: (value) {
            setState(() {
              sliderValue = value;
            });
          },
        )
      ],
    );
  }

  Column entradaRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefieres para desarollo móvil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title:Text( 
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue:radioSelected,
              onChanged: (value){
                setState((){
                  radioSelected=value!;
                  // ignore: avoid_print
                print('Seleccion del boton radio: $radioSelected');
                });
              } ,
            ),
          ),
        ),
        ListTile(
          title:Text( 
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue:radioSelected,
              onChanged: (value){
                setState((){
                  radioSelected=value!;
                //   // ignore: avoid_print
                // print('Seleccion del boton radio: $radioSelected');
                });
              } ,
            ),
          ),
        ),
      ],
    );
  }

  Row entradaCheck1() {
    return Row(
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked1,
            onChanged: (value) {
              setState(
                () {
                  isChecked1 = value!;
                },
              );
            },
          ),
        ),
        Text(
          'Eemulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(
                () {
                  isChecked2 = value!;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
