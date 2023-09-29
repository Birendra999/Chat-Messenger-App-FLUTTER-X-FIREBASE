
import 'package:chat_messenger_app/pages/login_page.dart';
import 'package:chat_messenger_app/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //intially show the login page
  bool showLoginPage=true;

  // toggle between login and signup page 
  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;

    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else{
      return RegisterPage(onTap: togglePages);
    }
  }
  
}