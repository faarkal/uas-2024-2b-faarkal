import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // Import semua screen
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
//import 'screens/messages_screen.dart';
//import 'screens/profile_screen.dart';
//import 'screens/notifications_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        //'/messages': (context) => MessagesScreen(),
        //'/profile': (context) => ProfileScreen(),
        //'/notifications': (context) => NotificationScreen(),
      },
    );
  }
}