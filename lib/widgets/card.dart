import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final String text;
  final String route;

  const CardWidget({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.route,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Card(
          color: backgroundColor,
          elevation: 5.0,
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
          ),
        ),
      )
    );
  }
}