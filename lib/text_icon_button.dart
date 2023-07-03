import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    super.key,
    this.onPressed,
    required this.label,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(icon, size: 30),
      title: Text(
        label,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
