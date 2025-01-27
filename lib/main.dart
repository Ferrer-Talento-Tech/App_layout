import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
const App({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Layout',
    theme: ThemeData(
     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
     useMaterial3: true,
   ), // ThemeData
   home: const HomePage(title: 'Programa Layout'),
  ); // MaterialApp 
 }
}

class HomePage extends StatefulWidget {
    const HomePage ({
        super.key,
        required this.title,
    });

    final String title;

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // color: Colors.amber,
                child: const Text('Layout Superior'),
              ), // Container
            ), // Expanded
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                     // alignment: Alignment.center,
                      // color: Colors.red,
                      // child: const Text('Primeira Coluna'),
                    ), // Container
                  ), // Expanded
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ), //Border.all
                        boxShadow: const [
                          BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0, 20),
                        ), // BoxShadow
                      ],
                      ), // BoxDecoration
                      child: const Text('Meu Aplicativo'),
                    ), // Container
                  ),// Expanded
                  Expanded(
                    child: Container(
                      // alignment: Alignment.center,
                      // color: Colors.red, 
                      // child: const Text('Terceira Coluna'),  
                    ), // Container
                  ), // Expanded
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
              //color: Colors.blue,
              child: const Text('Layout Inferior'),
            ), // Container
          ), // Expanded
        ],
      ), // Column
    ), // Center
    floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),  // floatingActionButton
    ); // Scaffold
  }
}