import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Components/background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
        height: size.height,
        width:size.width,
        child:Stack(
          children:[
            Positioned(
              top:0,
              left: 0,
              child:Image.asset('assets/images/main_top.png', width: size.width*0.3,)),
            backgroundScreen(),
            Positioned(
              bottom:0,
              right: 0,
              child:Image.asset('assets/images/login_bottom.png', width: size.width*0.3,))
             ],)
          
        )
        );
  }
}