import 'package:flutter/material.dart';
import 'singin_screen.dart';

class  HomeScreen extends StatefulWidget {
  @override
  _HomeScreen_State createState() => _HomeScreen_State();
}

class _HomeScreen_State extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("se déconnecter".toUpperCase()),
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> SinginScreen()));
          },
        )
      ),
    );
  }
}