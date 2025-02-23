import 'package:flutter/material.dart';

///import '../widget/w1.dart';
import '../widget/w2.dart';
///import '../widget/w3.dart';
import '../widget/counter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, 
    required this.title, 
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));

  num _counter = 0.5;
  
  void _updateCounter(num value) {
    setState(() {
      _counter = value;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0.5;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: _resetCounter,
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[Counter(valueOfChange: 0.1, counter: _counter, onCounterUpdated: _updateCounter,), W2(value: _counter,), Counter(valueOfChange: 1, counter: _counter, onCounterUpdated: _updateCounter,),],
            ),
          ),
        ],
      )),
    );
  }
}
