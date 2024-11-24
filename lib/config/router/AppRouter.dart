import 'package:flutter/material.dart';
import 'package:warnesbros/screens/AttractionsScreen.dart';

import '../../screens/HomeScreen.dart';

class AppRouter {
  static const String home = '/';
  static const String attractions = '/attractions';
  static const String restaurants = '/restaurants';
  static const String map = '/map';
  static const String store = '/store';
  static const String directions = '/directions';
  static const String schedule = '/schedule';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case attractions:
        return MaterialPageRoute(builder: (_) => const AttractionsScreen());
      /*case restaurants:
        return MaterialPageRoute(builder: (_) => const RestaurantsScreen());
      case map:
        return MaterialPageRoute(builder: (_) => const MapScreen());
      case store:
        return MaterialPageRoute(builder: (_) => const StoreScreen());
      case directions:
        return MaterialPageRoute(builder: (_) => const DirectionsScreen());
      case schedule:
       return MaterialPageRoute(builder: (_) => const ScheduleScreen()); */
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('404'),
            ),
            body: const Center(
              child: Text('Página no encontrada'),
            ),
          ),
        );
    }
  }
}
