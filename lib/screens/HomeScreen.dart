import 'package:flutter/material.dart';
import 'package:warnesbros/config/router/AppRouter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          backgroundColor:
              const Color.fromARGB(26, 33, 43, 0), // Color del fondo del logo
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Bordes redondeados del logo
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications,
                  color: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Botones de Buscar y Mis entradas
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.search),
                    label: const Text("Buscar"),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.confirmation_num_outlined),
                    label: const Text("Mis entradas"),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Tarjetas de Atracciones y Restaurantes
          Expanded(
            flex: 2, // Controla la altura relativa del grid
            child: GridView.count(
              crossAxisCount: 2, // Dos columnas por fila
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildFixedMenuCard(
                  title: "Atracciones",
                  imagePath: 'assets/images/attractions.jpeg',
                ),
                _buildFixedMenuCard(
                  title: "Restaurantes",
                  imagePath: 'assets/images/restaurants.jpg',
                ),
              ],
            ),
          ),

          // Mapa con bordes redondeados
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(15), // Bordes redondeados del mapa
              child: AspectRatio(
                aspectRatio: 16 /
                    8, // Relación de aspecto más pequeña para reducir tamaño
                child: _buildFixedMenuCard(
                  title: "Mapa",
                  imagePath: 'assets/images/map.jpg',
                ),
              ),
            ),
          ),

          // Lista de opciones
          _buildListTile(
            context,
            icon: Icons.store,
            title: "Tienda",
            route: AppRouter.store,
          ),
          _buildListTile(
            context,
            icon: Icons.map_outlined,
            title: "Cómo llegar",
            route: AppRouter.directions,
          ),
          _buildListTile(
            context,
            icon: Icons.watch_later_outlined,
            title: "Horario de apertura",
            route: AppRouter.schedule,
          ),
          _buildListTile(
            context,
            icon: Icons.payment_outlined,
            title: "Otros Servicios",
            route: AppRouter.schedule,
          ),
          _buildListTile(
            context,
            icon: Icons.receipt_long_outlined,
            title: "Normas de funcionamiento",
            route: AppRouter.schedule,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildFixedMenuCard({
    required String title,
    required String imagePath,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15), // Bordes redondeados de las tarjetas
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(15), // Bordes redondeados de la imagen
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Imagen ajustada al contenedor
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black
                  .withOpacity(0.4), // Contraste en la superposición
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String route,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
