import 'package:flutter/material.dart';

class contadorScreen extends StatefulWidget {
  const contadorScreen({
    super.key,
  });

  @override
  State<contadorScreen> createState() => _contadorScreenState();
}

class _contadorScreenState extends State<contadorScreen> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contador de clicks",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$cnt",
              style: const TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
            // Icon(Icons.accessibility_new_outlined)
            if (cnt != 1)
              const Text("Clicks", style: TextStyle(fontSize: 30),)
              else 
              const Text("Click", style: TextStyle(fontSize: 30),)


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cnt++;
          print("**** contenido de cnt: $cnt");
          setState(() {
            //es una función anonima, con solo ejecutarla funciona, se puede poner el cnt++ pero no es obligatorio
          });
        },
        child: const Icon(Icons.exposure_plus_1),
         ),
    );
  }
}
