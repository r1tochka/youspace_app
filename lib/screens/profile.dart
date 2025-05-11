import 'package:flutter/material.dart';
import 'planet.dart';
import 'notification.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Личный кабинет'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(  // Убрали const здесь
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Привет, космонавт!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              _CustomButton(
                text: 'Посмотреть планету',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PlanetScreen()),
                ),
                color: const Color(0xFF6C63FF),
              ),
              const SizedBox(height: 16),
              _CustomButton(
                text: 'Уведомления',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => NotificationScreen()),
                ),
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const _CustomButton({
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(200, 50),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}