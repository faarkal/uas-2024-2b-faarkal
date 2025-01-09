import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // Import semua screen
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/notifications_screen.dart';

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
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          final args = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return HomeScreen(userName: args);
            },
          );
        }
        // Define other routes here
        switch (settings.name) {
          case '/signin':
            return MaterialPageRoute(builder: (context) => SignInScreen());
          case '/signup':
            return MaterialPageRoute(builder: (context) => SignUpScreen());
          case '/messages':
            return MaterialPageRoute(builder: (context) => MessagesScreen());
          case '/profile':
            return MaterialPageRoute(builder: (context) => ProfileScreen());
          case '/notifications':
            return MaterialPageRoute(builder: (context) => NotificationScreen());
          default:
            return null;
        }
      },
    );
  }
}