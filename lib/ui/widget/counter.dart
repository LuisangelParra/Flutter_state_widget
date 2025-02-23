import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.valueOfChange,
    required this.counter,
    required this.onCounterUpdated,
  });

  final num valueOfChange;
  final num counter;
  final ValueChanged<num> onCounterUpdated; // Callback para actualizar el valor

  void _increment() {
    onCounterUpdated(counter + valueOfChange);
  }
  void _decrement() {
    onCounterUpdated(counter - valueOfChange);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              counter.toStringAsFixed(1),
              key: const Key('W1Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: _increment,
                    icon: const Icon(Icons.add),
                    key: const Key('W1Add')),
                IconButton(
                    onPressed: _decrement,
                    icon: const Icon(Icons.remove),
                    key: const Key('W1Sub'))
              ],
            ),
          )
        ],
      ),
    );
  }
}