import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/orange-theme.dart';
import 'package:provider/provider.dart'; 

import 'services/auth_service.dart';
import 'services/category_service.dart';
import 'services/product_service.dart';
import 'services/provider_service.dart';
import 'routes/app_routes.dart';


void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryService()),
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => ProductService()),
        ChangeNotifierProvider(create: (_) => ProviderService()),
      ],
      child: const TiendaApp(),
    );
  }
}

class TiendaApp extends StatelessWidget {
  const TiendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación Módulos',
      initialRoute: AppRoutes.initialRoute,      
      onGenerateRoute: AppRoutes.onGenerateRoute,
      routes: AppRoutes.routes,
      theme: MyTheme.myTheme,
    );
  }
}
