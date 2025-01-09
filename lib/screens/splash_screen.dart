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
            
            Image.asset(
              'assets/login.jpg', 
              height: 200, 
            ),
            SizedBox(height: 20),
            
             Text(
              "Welcome",
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 15),

            Text(
              "Selamat Datang di Aplikasi LearnOut",
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontSize: 16, 
                color: Colors.grey, 
              ),
            ),
            SizedBox(height: 20), 
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text('Sign In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    
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