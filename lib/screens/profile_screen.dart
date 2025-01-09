import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Import untuk navigasi ke Sign In (Log Out)

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50), // Placeholder avatar
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Settings'),
              onTap: () {
                // Navigasi ke pengaturan akun
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About LearnOut'),
              onTap: () {
                // Navigasi ke halaman About
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share the LearnOut App'),
              onTap: () {
                // Fungsi share app
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika Log Out
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}