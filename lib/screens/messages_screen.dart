import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: 10, // Jumlah pesan (ganti dengan data sebenarnya)
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person), // Placeholder untuk foto profil
            ),
            title: Text('Pengirim ${index + 1}'), // Placeholder untuk nama pengirim
            subtitle: Text('Isi pesan singkat...'), // Placeholder untuk isi pesan
            onTap: () {
              // Navigasi ke detail pesan
            },
          );
        },
      ),
    );
  }
}