import 'package:flutter/material.dart';

void main() {
  runApp(const BadgeDemoApp());
}

class BadgeDemoApp extends StatelessWidget {
  const BadgeDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Badge Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Badge Demo for presentation'),
        ),
        body: const BadgeExample(),
      ),
    );
  }
}

class BadgeExample extends StatelessWidget {
  const BadgeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BadgeItem(
                icon: Icons.notifications,
                count: 3,
                label: "Notifications",
                color: Colors.yellow,
              ),
              BadgeItem(
                icon: Icons.shopping_cart,
                count: 2,
                label: "Cart",
                color: Colors.lightBlue,
              ),
              BadgeItem(
                icon: Icons.mail,
                count: 5,
                label: "Messages",
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BadgeItem extends StatelessWidget {
  final IconData icon;
  final int count;
  final String label;
  final Color color;

  const BadgeItem({
    super.key,
    required this.icon,
    required this.count,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Badge.count(
          count: count,
          child: Icon(icon, size: 40, color: color),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}