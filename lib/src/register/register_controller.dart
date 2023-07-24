import 'package:flutter/material.dart';

class RegisterController {
  late BuildContext context;
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController lastNameController;  
  late TextEditingController phoneController;
  late TextEditingController passwordController;  
  late TextEditingController confirmPasswordController;  

  RegisterController() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    confirmPasswordController = TextEditingController();

  }

  Future? init(BuildContext context){
    this.context = context;
  }

  void register (){
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lastName = lastNameController.text.trim();
    String phone =  phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print(email);
    print(name);
    print(lastName);
    print(phone);
    print(password);
    print(confirmPassword);
  }

}

