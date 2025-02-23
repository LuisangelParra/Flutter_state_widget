import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({
    super.key,
    required this.value,
  });
  final num value;
  @override
  Widget build(BuildContext context) {
    Color containerColor;

    if (value < 0.4) {
      // Interpolación para obtener un gris más claro a medida que se acerque a 0
      final greyValue = (value / 0.4) * 255; // Escala el valor a 255 para el gris
      containerColor = Color.fromRGBO(greyValue.toInt(), greyValue.toInt(), greyValue.toInt(), 1);
    } else {
      // Interpolación hacia blueGrey
      final blueGreyValue = ((value - 0.4) / (1 - 0.4)) * 255; // Escala para azul grisáceo
      containerColor = Color.fromRGBO(
        96 + (blueGreyValue.toInt() * (55 - 96) ~/ 255), // R
        125 + (blueGreyValue.toInt() * (71 - 125) ~/ 255), // G
        139 + (blueGreyValue.toInt() * (100 - 139) ~/ 255), // B
        1,
      );
    }

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: containerColor, // should be grey when the decimal is bellow 0.4
    );
  }
}
