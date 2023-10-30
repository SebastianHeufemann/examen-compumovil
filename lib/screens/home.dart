import 'package:flutter/material.dart';
import '../widgets/card.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Lista Modulos')),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
            CardWidget(
              backgroundColor: Colors.orange,
              icon: Icons.folder_copy_sharp,
              text: 'Proveedores',
              route: 'providers'),
            CardWidget(
              backgroundColor: Colors.orange,
              icon: Icons.shop,
              text: 'Productos',
              route: 'products',
            ),
            CardWidget(
              backgroundColor: Colors.orange,
              icon: Icons.pageview,
              text: 'Categorias',
              route: 'categories',
            )            
          ],
        )
      ),
    );
  }
}