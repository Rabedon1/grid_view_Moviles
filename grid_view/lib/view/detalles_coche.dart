import 'package:flutter/material.dart';
import '../models/coche.dart';

class DetallesCoche extends StatelessWidget {
  final Coche coche;

  DetallesCoche({required this.coche});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${coche.marca} ${coche.modelo}'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            coche.image,
            Divider(color: Colors.white),
            Text(
              'Marca: ${coche.marca}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'Modelo: ${coche.modelo}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}