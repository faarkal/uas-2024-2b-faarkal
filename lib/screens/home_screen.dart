import 'package:flutter/material.dart';


import 'messages_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('Welcome to Home!')),
      bottomNavigationBar: BottomNavigationBar( // Menambahkan Bottom Navigation Bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: 0, // Indeks item yang aktif
        onTap: (int index) {
          // Handle tap pada Bottom Navigation Bar
          if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesScreen()));
          }else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          }else if(index == 3){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
          }
        },
      ),
    );
  }
}