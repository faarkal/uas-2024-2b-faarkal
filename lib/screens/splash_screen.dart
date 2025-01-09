import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget untuk gambar (logo)
            Image.asset(
              'assets/login.jpg', // Ganti dengan path gambar logo baru Anda
              height: 200, // Atur tinggi gambar sesuai kebutuhan
            ),
            SizedBox(height: 20), // Spasi antara gambar dan teks
            // Widget untuk teks
             Text(
              "Welcome",
              textAlign: TextAlign.center, // Rata tengah teks
              style: TextStyle(
                fontSize: 20, // Ukuran font
                fontWeight: FontWeight.bold, // Tebal font
                color: Colors.black, // Warna teks
              ),
            ),
            SizedBox(height: 15),

            Text(
              "Selamat Datang di Aplikasi LearnOut",
              textAlign: TextAlign.center, // Rata tengah teks
              style: TextStyle(
                fontSize: 16, // Ukuran font
                color: Colors.grey, // Warna teks
              ),
            ),
            SizedBox(height: 20), // Spasi antara teks dan teks "Welcome"
            // Widget untuk teks "Welcome" 
            // Widget untuk tombol "Sign In" dan "Sign Up"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur jarak antar tombol
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman Sign In
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()), // Pastikan SignInScreen sudah dibuat
                    );
                  },
                  child: Text('Sign In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman Sign Up
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()), // Pastikan SignUpScreen sudah dibuat
                    );
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}