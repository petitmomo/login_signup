import 'package:flutter/material.dart';
import 'package:login_signup/reusable_widgets/reusable_widget.dart';
import 'package:login_signup/utils/colors_utils.dart';

import 'home_sreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _confirPasswordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "INSCRIPTION",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Entrer votre nom d'utilisateur", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Entrer votre email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Entrer votre mot de passe", Icons.lock_outlined, true,
                    _passwordTextController),
                  const SizedBox(
                  height: 20,
                ),
                reusableTextField("Confirmer le mot de passe", Icons.lock_outlined, true,
                    _confirPasswordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, false, (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> HomeScreen()));
                }),
              ],
            ),
          ))),
    );
  }
}