import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String namaError = '';
  String emailError = '';
  String passwordError = '';
  String confirmPasswordError = '';

  // Fungsi untuk validasi email
  bool _isValidEmail(String email) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  // Fungsi untuk validasi dan navigasi ke halaman login
  void _register() {
    String namaLengkap = namaController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    setState(() {
      namaError = '';
      emailError = '';
      passwordError = '';
      confirmPasswordError = '';

      // Cek apakah semua kolom terisi
      if (namaLengkap.isEmpty) {
        namaError = 'Nama lengkap tidak boleh kosong';
      }

      if (email.isEmpty) {
        emailError = 'Email tidak boleh kosong';
      } else if (!_isValidEmail(email)) {
        emailError = 'Email tidak valid';
      }

      // Validasi panjang password minimal 6 karakter
      if (password.isEmpty) {
        passwordError = 'Password tidak boleh kosong';
      } else if (password.length < 6) {
        passwordError = 'Password harus minimal 6 karakter';
      }

      // Validasi konfirmasi password
      if (confirmPassword.isEmpty) {
        confirmPasswordError = 'Konfirmasi password tidak boleh kosong';
      } else if (password != confirmPassword) {
        confirmPasswordError = 'Konfirmasi password tidak sesuai';
      }

      if (namaError.isEmpty && emailError.isEmpty && passwordError.isEmpty && confirmPasswordError.isEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
                errorText: namaError.isNotEmpty ? namaError : null,
              ),
            ),
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
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Password',
                border: OutlineInputBorder(),
                errorText: confirmPasswordError.isNotEmpty ? confirmPasswordError : null,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: Text('Sign Up'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Already have an account? Sign In'),
            ),
            SizedBox(height: 20),
            Text('Or sign up with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/google_logo.png'),
                  iconSize: 24,
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/facebook_logo.png'),
                  iconSize: 24, 
                  onPressed: () {
                   
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