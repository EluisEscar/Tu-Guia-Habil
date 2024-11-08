/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Índice de la pestaña seleccionada

  // Lista de pantallas para cada pestaña
  static const List<Widget> _screens = <Widget>[
    Center(child: Text('Pantalla de Inicio', style: TextStyle(fontSize: 24))),
    Center(child: Text('Pantalla de Búsqueda', style: TextStyle(fontSize: 24))),
    Center(child: Text('Pantalla de Perfil', style: TextStyle(fontSize: 24))),
  ];

  // Cambia el índice cuando se selecciona una pestaña
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu Guia Habil'),
      ),
      body: _screens[_selectedIndex], // Muestra la pantalla seleccionada
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex, // Índice actual
        selectedItemColor: Colors.blue, // Color del ítem seleccionado
        onTap: _onItemTapped, // Llama a la función cuando se selecciona una pestaña
      ),
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Lista de widgets que se muestran en cada pestaña
  static List<Widget> _screens = <Widget>[
    InicioScreen(), // Pantalla con el listado de opciones en "Inicio"
    Center(child: Text('Pantalla de Búsqueda', style: TextStyle(fontSize: 24))),
    Center(child: Text('Pantalla de Perfil', style: TextStyle(fontSize: 24))),
  ];

  // Cambia la pantalla cuando se selecciona una opción de la barra de navegación
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu Guia habil'),
      ),
      body: _screens[_selectedIndex], // Muestra la pantalla seleccionada
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
 // Pantalla de Inicio con un ListView y fondo azul
class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0028688), // Establece el fondo azul para la pantalla de Inicio
      child: ListView(
        shrinkWrap: false,
        padding: EdgeInsets.all(70),
        children: [
            Card(
            child: ListTile(
              leading: Icon(CupertinoIcons.eyeglasses, color: Colors.black),
              title: Text('Realidad aumentada', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Acción para la opción 1
                print("Seleccionaste Opción 1");
              },
            ),
          ),
          SizedBox(height: 30),
          Card(
          child: ListTile(
            leading: Icon(Icons.flutter_dash, color: Colors.black),
            title: Text('ChatBot', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Acción para la opción 2
              print("Seleccionaste Opción 2");
              },
            ),
          ),
          SizedBox(height: 30),
          Card(
          child: ListTile(
            leading: Icon(Icons.map, color: Colors.black),
            title: Text('Tu ruta', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Acción para la opción 3
              print("Seleccionaste Opción 3");
              },
            ),
          ),
          SizedBox(height: 30),
          Card(
          child: ListTile(
            leading: Icon(Icons.article, color: Colors.black),
            title: Text('Contenido relacionado', style: TextStyle(color: Colors.black)),
            onTap: () {
              // Acción para la opción 4
              print("Seleccionaste Opción 4");
              },
            ),
          ),
        ],
      ),
    );
  }
}