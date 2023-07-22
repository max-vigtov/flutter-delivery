import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -75,
              left: -85,
              child: _circle()
              ),

            Positioned(
              top: 70,
              left: 35,
              child: _textRegister()
              ), 

            Positioned(
              top: 55,
              left: 0,
              child: _iconBack()
              ), 

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 150),
              child: SingleChildScrollView(
                child: Column(                
                  children: [
                    _imageUser(),
                    SizedBox(height: 30,),
                    _textFieldEmail(),
                    _textFieldName(),
                    _textFieldLastName(),
                    _textFieldphone(),
                    _textFieldPassword(),
                    _textFieldConfirmPassword(),
                    _buttonRegister()
              
                  ],
                ),
              ),
            ) 
          ],
        ),
      )
    );
  }
  
  Widget _imageUser (){
    return CircleAvatar(
      backgroundImage: const AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _circle (){
  return Container(
    width: 240,
    height: 240,
    decoration: BoxDecoration(
      color: MyColors.primaryColor,
      borderRadius: BorderRadius.circular(100)
    ),
  );
 }

  Widget _textFieldEmail (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Correo electronico',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.email, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  
 
  Widget _textFieldName (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.person, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  

  Widget _textFieldLastName (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Apellido',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.person_outline, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  
 
  Widget _textFieldphone (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Celular',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.phone, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  

  Widget _textFieldPassword (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  

  Widget _textFieldConfirmPassword (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  hintStyle: TextStyle(
                    color: MyColors.primaryColorDark
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.lock_outline, color: MyColors.primaryColor,)
            ),
       ),
  );
 }  



  Widget _buttonRegister (){
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
    child: ElevatedButton(
               onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15)
                 ),
               child: const Text('INGRESAR') 
            ),
  );
 }  

  Widget _textRegister (){
   return const Text('REGISTRO',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20, 
              fontFamily: 'NimbusSans' 
            ),
     );
 }

  Widget _iconBack (){
    return IconButton(
      onPressed: (){ Navigator.pop(context);}, 
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24,));
  }
}