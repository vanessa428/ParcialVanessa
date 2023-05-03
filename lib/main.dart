import 'package:flutter/material.dart';

class EstadoWidget extends StatefulWidget {
  final VoidCallback onPressed;

  const EstadoWidget({required this.onPressed, required bool isOcupado});

  @override
  _EstadoWidgetState createState() => _EstadoWidgetState();
}

class _EstadoWidgetState extends State<EstadoWidget> {
  late bool isOcupado = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOcupado = !isOcupado;
        });
        widget.onPressed();
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: isOcupado ? Colors.red : Color.fromARGB(255, 2, 248, 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            isOcupado ? "Ocupado" : "Vacío",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'PHONE'),
    );
  }
}

// Prueba
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.home, color: Colors.black, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Home'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.favorite, color: Colors.red, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Favoritos'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.car_rental,
                            color: Colors.orange, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Didi'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.facebook,
                            color: Colors.blueAccent, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Facebook'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.wifi, color: Colors.grey, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Settings'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.settings, color: Colors.black, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Configuracion'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.phone_rounded,
                            color: Colors.lightGreen, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Contactos'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.laptop_chromebook,
                            color: Colors.yellow, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Chrome'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.local_movies,
                            color: Colors.purple, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('videos'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.airplanemode_active,
                            color: Colors.lightBlue, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Aerolineas'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.restaurant,
                            color: Colors.blueGrey, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Restaurantes'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.camera_alt, color: Colors.pink, size: 30.0),
                        SizedBox(height: 10),
                        Container(
                          child: Text('Camara'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
