import 'package:flutter/material.dart';
import '../controllers/coche_controller.dart';
import 'detalles_coche.dart'; // Asegúrate de importar la vista de detalles

class VistaCoches extends StatefulWidget {
  @override
  VistaCochesState createState() => VistaCochesState();
}

class VistaCochesState extends State<VistaCoches> {
  final CocheController cocheController = CocheController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo GridView'),
        backgroundColor: Colors.cyan,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cocheController.coches.length,
        itemBuilder: (context, index) {
          final item = cocheController.coches[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCoche(coche: item),
                ),
              );
            },
            child: Card(
              color: Colors.cyan,
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    item.image,
                    Divider(color: Colors.white),
                    Text(
                      '${item.modelo}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '${item.marca}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}