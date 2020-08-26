import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Liveupdate extends StatefulWidget {
  @override
  _LiveupdateState createState() => _LiveupdateState();
}

class _LiveupdateState extends State<Liveupdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff2c341), 
        appBar:AppBar(
          backgroundColor:Color(0xff1F1E1E),
             title: Row(
              children:<Widget>[
              //Image.asset("assets/images/logo white.png",height: 60,),
              Text("  Covid-19 Live Update"),
            ]
          ),
          ),
          body: Live(),
    );
  }
}

class Live extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  WebView(
      initialUrl: 'https://www.worldometers.info/coronavirus/',
    );
  }
}