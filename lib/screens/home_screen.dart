import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              child: Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              child: Text('View Messages'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              child: Text('Notifications'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}