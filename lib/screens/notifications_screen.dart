import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: 5, // Ganti dengan jumlah notifikasi sebenarnya
        itemBuilder: (context, index) {
          return Card( // Menggunakan Card untuk tampilan notifikasi
            child: ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notifikasi ${index + 1}'),
              subtitle: Text('Deskripsi notifikasi...'),
              onTap: () {
                // Aksi ketika notifikasi di-tap
              },
            ),
          );
        },
      ),
    );
  }
}