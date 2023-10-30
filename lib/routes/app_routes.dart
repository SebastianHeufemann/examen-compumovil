import 'package:flutter/material.dart';
import '../screens/list_category.dart';
import '../screens/list_product.dart';
import '../screens/list_provider.dart';
import '../screens/create_category.dart';
import '../screens/create_product.dart';
import '../screens/create_provider.dart';
import '../screens/home.dart';
import '../screens/error.dart';
import '../screens/login.dart';
import '../screens/register.dart';

class AppRoutes {
  static const initialRoute = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'addUser': (BuildContext context) => const SignupScreen(),
    'login': (BuildContext context) => const LoginScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'categories': (BuildContext context) => const ListCategoryScreen(),
    'categories/create': (BuildContext context) => const CreateCategoryScreen(),
    'providers': (BuildContext context) => const ListProviderScreen(),
    'providers/create': (BuildContext context) => const CreateProviderScreen(),
    'products': (BuildContext context) => const ListProductScreen(),
    'products/create': (BuildContext context) => const CreateProductScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}