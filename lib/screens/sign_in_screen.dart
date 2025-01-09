import 'package:flutter/material.dart';

// Import screen lain yang dibutuhkan
import 'home_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: 'Email')),
            TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true),
            ElevatedButton(
              onPressed: () {
                // Logika Sign In (biasanya validasi dan API call)
                Navigator.pushReplacement( //Gunakan pushReplacement agar user tidak bisa kembali ke halaman login dengan tombol back
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Sign In'),
            ),
            // ... (Tombol Sign In dengan Google/Facebook dan teks "Don't have an account?")
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                }, child: Text('Sign Up Now'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}