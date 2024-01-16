import 'package:flutter/material.dart';
//Esto es el material de donde se importo el proyecto

void main() {
  runApp(const MyApp());
}
//Aqui se establece la función principal de Flutter, en donde se ejecuta el interfaz del usuario, por ejemplo el "void main()" es el inicializador
//A lo que entiendo el runApp(const MyApp()); es el comando que da inicio a la aplicación Flutter
class MyApp extends StatelessWidget {
//Esto define una clase llamada MyApp que extiende la clase StatelessWidget. En el contexto de Flutter, los widgets son componentes básicos de la interfaz de usuario
  const MyApp({super.key});
//Esto declara un constructor constante para la clase MyApp que toma un parámetro llamado key. super.key indica que se está utilizando el parámetro key de la clase principal (StatelessWidget)
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//Es el Widget raiz que define aspectos fundamentales
      title: 'Flutter Demo',
//Establece el titulo
      theme: ThemeData(
//Te permite definir el tema de la aplicación. En este caso, se utiliza primarySwatch: Colors.blue para definir el color principal de la aplicación.
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//En este código, se ha añadido la propiedad colorScheme a la configuración del tema de la aplicación. Se utiliza ColorScheme.fromSwatch para generar un esquema de colores a partir de un color específico (Colors.deepPurple en este caso) que influirá en varios aspectos del tema, como el color del botón, el color del fondo, etc.
        useMaterial3: true,
//Además, la propiedad useMaterial3 está establecida en true. Esta propiedad se utiliza para habilitar o deshabilitar características específicas de Material Design 3.0, que podría ser un conjunto de características de diseño más actualizado
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
//MyHomePage es un widget que extiende StatelessWidget y recibe un parámetro title en su constructor
    );
  }
}

class MyHomePage extends StatefulWidget {
//MyHomePage es una clase que extiende StatefulWidget. Los widgets que extienden StatefulWidget pueden cambiar su estado durante su ciclo de vida, lo que significa que pueden ser dinámicos y responder a eventos
  const MyHomePage({super.key, required this.title});
/*El constructor const MyHomePage({Key? key, required this.title}) : super(key: key); está recibiendo dos parámetros: key y title. key se utiliza para identificar de manera única el widget, y title es un parámetro requerido que se espera que sea un String y representa el título de la página de inicio
Se está definiendo una clase interna llamada _MyHomePageState que extiende State<MyHomePage>. Esta clase se utiliza para mantener el estado mutable de MyHomePage

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}