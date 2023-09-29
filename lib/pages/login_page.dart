import 'package:chat_messenger_app/components/my_buttons.dart';
import 'package:chat_messenger_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void signIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.grey[800],
                ),
                SizedBox(
                  height: 30,
                ),

                //welcome back message
                Text(
                  "Welcome back you\'ve been missed!",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 25,
                ),

                // email text field
                MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obsecure: false),
                // password textfield
                SizedBox(
                  height: 10,
                ),

                MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obsecure: true
                    ),

                    // sign button
                    SizedBox(
                      height: 25,
                    ),
                    MyButton(onTap: signIn, text: "Sign In"),
                   SizedBox(height: 50,),
                    // not a memeber ?register now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a memeber?", ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text("Register Now",
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                       
                      ],
                    )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
