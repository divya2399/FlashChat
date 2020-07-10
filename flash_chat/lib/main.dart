import 'package:flutter/material.dart';
import 'package:flashchat/welcome_screen.dart';
import 'package:flashchat/login_screen.dart';
import 'package:flashchat/registration_screen.dart';
import 'package:flashchat/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blueGrey[900],
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: WelcomeScreen.id ,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
