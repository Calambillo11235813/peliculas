import 'package:flutter/material.dart';
import 'package:peliculas_1/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Peliculas en cines',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          CardSwipe(),

          //Listado horizontal de películas
        ],
      ),
    );
  }
}
