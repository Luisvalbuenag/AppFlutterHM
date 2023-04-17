import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData(
        // Este es el tema de tu aplicación.

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'FlutterApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget es la página de inicio de tu aplicación. Tiene estado, lo que significa
  // que tiene un objeto State (definido abajo) que contiene campos que afectan
  // su apariencia.

  // Esta clase es la configuración del estado. Contiene los valores (en este
  // caso el título) proporcionados por el padre (en este caso el widget App) y
  // utilizados por el método build del Estado. Los campos en una subclase Widget son
  // siempre marcados como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Este método se vuelve a ejecutar cada vez que se llama a setState, por ejemplo como se hace
    // por el método _incrementCounter anterior.
    //
    // El framework de Flutter ha sido optimizado para hacer que la reejecución de los métodos de construcción
    // rápidos, para que puedas reconstruir cualquier cosa que necesite actualizarse en lugar de
    // que tener que cambiar individualmente las instancias de los widgets.
    return Scaffold(
      appBar: AppBar(
        // Aquí tomamos el valor del objeto MyHomePage que fue creado por el método
        // el método App.build, y lo usamos para establecer el título de nuestra appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Centro es un widget de diseño. Toma un único hijo y lo posiciona
        // en el centro del padre.
        child: Column(
          // Column es también un widget de diseño. Toma una lista de hijos y
          // los ordena verticalmente. Por defecto, su tamaño se ajusta a sus
          // hijos horizontalmente, e intenta ser tan alto como su padre.

          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hola Mundo',
              style: TextStyle(
                fontWeight: FontWeight.bold,

                fontSize: 24, //tamaño de letra en puntos
                color: Colors.black, //color de letra
              ),
            )
          ],
        ),
      ),
    );
  }
}
