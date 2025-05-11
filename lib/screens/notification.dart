import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Уведомления'),
        backgroundColor: Color(0xFF6C63FF), // Фиолетовый
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Новое сообщение'),
            subtitle: Text('У вас 1 новое сообщение'),
          ),
          ListTile(
            title: Text('Обновление системы'),
            subtitle: Text('Доступно обновление v1.2.0'),
          ),
          ListTile(
            title: Text('Запланировано мероприятие'),
            subtitle: Text('Завтра в 15:00'),
          ),
        ],
      ),
    );
  }
}