import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'buttons.dart';
import 'package:loginauth/constants.dart';

class backgroundScreen extends StatelessWidget {
  const backgroundScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding:EdgeInsets.only(left:25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left:20),
            child: SvgPicture.asset('assets/icons/chat.svg', height: size.height*0.4,)),
          SizedBox(height:20),
          CommonButton(pressed: (){}, child: Text('LOGIN', style: TextStyle(color:Colors.white,),), color:kPrimaryColor),
          SizedBox(height:20),
          CommonButton(pressed: (){}, child: Text('SIGN UP ', style: TextStyle(color:Colors.black,),), color:kPrimaryLightColor),
          ],),
    );
  }
}