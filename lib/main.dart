import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Counter App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,

        title: Text(widget.title),

      ),
      backgroundColor: Colors.blue[200],
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is counterApp . You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(onPressed: _incrementCounter,
            backgroundColor: Colors.green,
            tooltip: '_increment',
            icon:const Icon(Icons.add),
            label: const Text('Increment'),
          ),

          const SizedBox(width: 20,),

          FloatingActionButton.extended(onPressed: _decrementCounter,
            backgroundColor: Colors.redAccent,
            tooltip: '_decrement',
            icon: const Icon(Icons.remove),
            label: const Text('Decrement'),
          ),

          const SizedBox(width: 20,),

          FloatingActionButton.extended(onPressed: _resetCounter,
            backgroundColor: Colors.blueGrey,
            tooltip: 'Reset',
            icon: const Icon(Icons.refresh),
            label: const Text('Reset'),
          )
        ],
      ),
    );
  }
}
