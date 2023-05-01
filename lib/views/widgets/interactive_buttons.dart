import 'package:flutter/material.dart';

class InteractiveButtons extends StatelessWidget {
  const InteractiveButtons({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.black, size: 20),
      label: Text(
        label,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}