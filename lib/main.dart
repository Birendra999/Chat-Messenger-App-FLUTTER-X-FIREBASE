import 'package:chat_messenger_app/firebase_options.dart';
import 'package:chat_messenger_app/services/auth/auth_get.dart';
import 'package:chat_messenger_app/services/auth/auth_services.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:chat_messenger_app/services/auth/loginorregister.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
      create: (context) => AuthService(), child: const Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
