import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10), // Espaciado entre el título y el ListView
          // Aquí se usa Flexible para manejar el ListView.builder
          Expanded(
            child: ListView.builder(
              scrollDirection:
                  Axis.horizontal, // Scroll horizontal para mostrar una fila de items
              itemCount: 20,
              itemBuilder: (_, int index) {
                return Container(
                  width: 130,
                  height: 190,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ), // Espacio entre ítems
                  color: Colors.green,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
