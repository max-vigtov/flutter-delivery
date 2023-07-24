import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery/src/login/login_controller.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _con = LoginController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(      
               children: [              
                _lottieAnimation(),
                _textFieldEmail(),
                _textFieldPassword(),
                _buttonLogin(),
                _textDontHaveAccount()                                      
              ],
             ),
            ),

            Positioned(
              top: -75,
              left: -85,
              child: _circleLogin()
              ),

            Positioned(
              top: 70,
              left: 35,
              child: _textLogin()
              ),           
          ]
        ),
      ),
    );
  }

// Widget _imageBanner(){
//   return Container(
//     margin: EdgeInsets.only(
//       top: 100, 
//       bottom: MediaQuery.of(context).size.height * 0.22
//       ),
//     child: Image.asset('assets/img/delivery.png',
//       height: 200,
//       width: 200 ,
//       ),
//   );
//   }

Widget _textFieldEmail (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
      controller: _con.emailController,
      keyboardType: TextInputType.emailAddress,
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

Widget _textFieldPassword (){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
      controller: _con.passwordController,
      obscureText: true,
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

Widget _buttonLogin (){
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
    child: ElevatedButton(
              onPressed: _con.login,
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

Widget _textDontHaveAccount (){
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('No tienes cuenta?'),
        const SizedBox(width: 7,),
        GestureDetector(
          onTap:() {
          _con.goToRegisterPage();
          },
          child: Text('Registrate', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyColors.primaryColor
                ),
             ),
        )
       ],
    );
 }   

 Widget _circleLogin (){
  return Container(
    width: 240,
    height: 240,
    decoration: BoxDecoration(
      color: MyColors.primaryColor,
      borderRadius: BorderRadius.circular(100)
    ),
  );
 }

 Widget _textLogin (){
  return const Text('LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22, 
              fontFamily: 'NimbusSans' 
            ),
     );
 }

 Widget _lottieAnimation(){
    return Container(
       margin: EdgeInsets.only(
      top: 160, 
      bottom: MediaQuery.of(context).size.height * 0.17
      ),
      child: Lottie.asset('assets/json/animation_lkdnz7to.json',
        width: 450,
        height: 240,
        fit: BoxFit.fill
        ),
    );
    
 }
}
