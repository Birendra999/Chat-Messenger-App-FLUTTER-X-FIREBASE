
import 'package:chat_messenger_app/pages/home_page.dart';
import 'package:chat_messenger_app/services/auth/loginorregister.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          // user is log in 
          if(snapshot.hasData){
            return const HomePage();
          }
          // user is not login 
          else{
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}