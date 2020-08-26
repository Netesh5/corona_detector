import 'package:flutter/material.dart';



class OurTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff2c341), 
        appBar:AppBar(
          backgroundColor:Color(0xff1F1E1E),
             title: Row(
              children:<Widget>[
              //Image.asset("assets/images/logo white.png",height: 60,),
              Text("  Our Team"),
            ]
          ),
          ),
          
    );
  }
}