import 'package:chat_and_login/screens/chat_screen.dart';
import 'package:chat_and_login/screens/login_screen.dart';
import 'package:chat_and_login/screens/registration_screen.dart';
import 'package:chat_and_login/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyDuZwACFk5raByCKz04V0g0rpcIIUbgto4',
      appId: "1:1035452793612:android:f0fa0d4f288aa7a32dbf29",
      messagingSenderId: "1035452793612",
      projectId: "test1-4abd3", 
    ),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
