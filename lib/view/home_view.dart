import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  static String tag = 'home';

  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    const alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/pexels-olly-3807755-removebg-preview 1.png'),
        ),
      ),
    );



    throw UnimplementedError();
  }


}