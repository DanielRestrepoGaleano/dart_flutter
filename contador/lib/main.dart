/// The `main` function in Dart initializes a Flutter application by running the `Contador` class to
/// display its UI.
import 'package:contador/views/screens/contador_screen.dart';
import 'package:flutter/material.dart';

void main() {
  /// `runApp(Contador());` is a method call that is used in Flutter to run the application and display
  /// the UI defined in the `Contador` class. In this case, it is starting the application with the UI
  /// defined in the `Contador` class.
  runApp(const Contador());
}
//statless widget o stateful widget.

//se necesita un constructor sino da error la clase de tipo widget
/// This Dart class named Contador extends StatelessWidget.
///
/// azul es para sugerencia
class Contador extends StatelessWidget {
  const Contador(
      {super.key}); //necesitan keys para ubicarlos en el arbol de widgets

  @override
  Widget build(BuildContext context) {
    //Todas las clases stateless o stateful, necesitan tener un metodo llamado build, encargado de devolver un widget
    //se le pasa como parametro el contexto
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Center(child: Text("Hola flutter")),
      home: contadorScreen(),
    ); //este widget va a acomodar el contenido en el centro
  }
}


