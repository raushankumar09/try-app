import 'package:flutter/material.dart';

class ThemScreen extends StatelessWidget {
  final bool isDarkMood;
  final ValueChanged<bool> onThemeChanged;

  const ThemScreen({
    super.key,
    required this.isDarkMood,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isDarkMood ? Icons.dark_mode : Icons.light_mode,
              size: 80,
            ),
            const SizedBox(height: 20),
            Text(
              isDarkMood ? 'Dark Mode' : 'Light Mode',
              style: const TextStyle(fontSize: 24),
            ),
            Switch(
              value: isDarkMood,
              onChanged: onThemeChanged,
            ),
          ],
        ),
      ),
    );
  }
}