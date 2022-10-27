
import 'package:flutter/material.dart';
import 'package:login_signup/reusable_widgets/reusable_widget.dart';
import 'package:login_signup/utils/colors_utils.dart';
import 'home_sreen.dart';
import 'singup_screen.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  _SinginScreenState createState() => _SinginScreenState();
}
class _SinginScreenState extends State<SinginScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget('assets/logo1.png'),
              SizedBox(height: 30.0),
              reusableTextField("Entrer le nom d'utilisateur", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Entrer votre mot de passe", Icons.lock_outline, true,
                  _passwordTextController),
                   const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> HomeScreen()));
              }),
              signUpOption(),
            ],
          ),
        ),
      ),
    );
  }

    Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Vous n'avez pas un compte?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "  S'inscrire",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

 
