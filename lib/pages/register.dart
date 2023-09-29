
import 'package:chat_messenger_app/components/my_buttons.dart';
import 'package:chat_messenger_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,
   required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController=TextEditingController();
  void signUp(){

  }
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

                //create an account for you.
                Text(
                  "Let's create an account for you!",
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
                    SizedBox(height: 10,),
                    MyTextField(
                    controller: confirmPasswordController,
                    hintText: "Confirm Password",
                    obsecure: true
                    ),

                    // sign button
                    SizedBox(
                      height: 25,
                    ),
                    MyButton(onTap: signUp, text: "Sign Up"),
                   SizedBox(height: 50,),
                    // not a memeber ?register now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already an account?",
                        style: TextStyle(
                       ),
                       
                        ),
                        SizedBox(width: 6,),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text("Sign In Now",
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