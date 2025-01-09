import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String emailError = '';
  String passwordError = '';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Fungsi untuk validasi email
  bool _isValidEmail(String email) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  // Fungsi untuk login
  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    setState(() {
      emailError = '';
      passwordError = '';

      // Cek apakah semua kolom terisi
      if (email.isEmpty) {
        emailError = 'Email tidak boleh kosong';
      } else if (!_isValidEmail(email)) {
        emailError = 'Email tidak valid';
      }

      if (password.isEmpty) {
        passwordError = 'Password tidak boleh kosong';
      }

      // Jika validasi sukses, navigasi ke halaman home
      if (emailError.isEmpty && passwordError.isEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(userName: email.split('@')[0]), // Pass the user name to HomeScreen
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorText: emailError.isNotEmpty ? emailError : null,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                errorText: passwordError.isNotEmpty ? passwordError : null,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Sign In'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
            SizedBox(height: 20),
            Text('Or sign in with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/google_logo.png'),
                  iconSize: 24,
                  onPressed: () {
                    // Add Google sign-in logic here
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/facebook_logo.png'),
                  iconSize: 24,
                  onPressed: () {
                    // Add Facebook sign-in logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}