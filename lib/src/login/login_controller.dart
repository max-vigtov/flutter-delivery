import 'package:flutter/material.dart';

class LoginController {
   late BuildContext context;
   late TextEditingController emailController;
   late TextEditingController passwordController;
   
    LoginController() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

   Future? init(BuildContext context){
    this.context = context; 
  }

  void goToRegisterPage (){
     Navigator.pushNamed(context, 'register');
  }

  void login (){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    print('EMAIL : $email\nPASSWORD: $password');
  }
}