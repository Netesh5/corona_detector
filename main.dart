

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'live.dart';
import 'ourteam.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/a":(BuildContext context) => OurTeam(),
        "/b":(BuildContext context) => HomePage(),
      },
    );
  }
}

 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 250.0,
      child: new Carousel(
        boxFit:BoxFit.cover,
        images:[
          AssetImage("assets/images/corona.jpg"),
          AssetImage("assets/images/symptoms.jpg"),
          AssetImage("assets/images/pm.jpg"),
        ],
        autoplay:true,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 2500),
        indicatorBgPadding: 7.0,
        
      ),

    );
    return MaterialApp(
      // initialRoute: '/',
      
    home: Scaffold(
      
        backgroundColor:Color(0xff1F1E1E), 
        appBar:AppBar(
          backgroundColor:Color(0xff1F1E1E),
          // shape: RoundedRectangleBorder(
          //   borderRadius:BorderRadius.all(Radius.circular(30)) ),
          title: Row(
            children:<Widget>[
              //Image.asset("assets/images/logo white.png",height: 60,),
              // Drawer(),
              Text("  Corona Detector"),
              
            ]
          ),
          ),
          drawer:Drawer(
            child: ListView(
              children:<Widget>[
                DrawerHeader(
                  child:Container(
                  // width: 60,
                  // height: 60,
                  child: CircleAvatar(
                    backgroundImage:AssetImage("assets/images/logo.png"),
                  ),
                  ),
                decoration: BoxDecoration(color:Color(0xff1F1E1E) ),
                ),
                
                ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text('Home', style: TextStyle(color: Colors.blue)),
                onTap: () => Navigator.of(context).pushNamed("/b"),
                
                ),
            ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
                title: Text('Our Team', style: TextStyle(color: Colors.blue)),
                onTap: () => Navigator.of(context).pushNamed("/a"),
                
                              
                ),
            ListTile(
                leading: Icon(
                  Icons.contacts,
                  color: Colors.blue,
                ),
                title: Text('Contact Us', style: TextStyle(color: Colors.blue)),
                onTap: (){
                  
               }
                ),
            
              ]
            ),
            
          ),
          body: ListView(
             children: <Widget>[
               image_carousel,
               Dashboard(),
              
              
             ],
          ),
          
    ),
    );
  }
}






class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 425.0,
      padding: EdgeInsets.only(top:13.0),
      child:GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        children: <Widget>[
          Card(
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)) 
            ),
            // color: Color(0xff1F1E1E),
            child:Stack(
              children: <Widget>[
               Center(
           child: InkWell(
              onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                  return Liveupdate();
            
          }));
              },
              child:Image.asset('assets/images/live.png',height: 150,width: 150,)
              ),
                ),
              ],
            ),
          ),
              // Text("Covid-19 Live Update", style:TextStyle(color:Colors.white),)
              Card(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)) 
            ),
                color: Colors.blueGrey,
                // color: Color(0xff1F1E1E),
                child: Stack(
                  children:<Widget>[
                    Center(
                     child: InkWell(
              onTap: (){
              },
              child:Image.asset('assets/images/detector.png',height: 150,width: 150,)   
              ),
                    ),
                  ]
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)) 
            ),
                color: Colors.blueGrey,
                // color: Color(0xff1F1E1E),
                child: Stack(
                  children:<Widget>[
                    Center(
                     child: InkWell(
              onTap: (){
          
              },
              child:Image.asset('assets/images/info.png',height: 150,width: 150,)   
              
              ),
                    ),
                  ]
                ),
              ),
               Card(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)) 
            ),
                color: Colors.blueGrey,
                // color: Color(0xff1F1E1E),
                child: Stack(
                  children:<Widget>[
                    Center(
                     child: InkWell(
              onTap: (){
              },
              child:Image.asset('assets/images/facts.png',height: 150,width: 150,)   
              
              ),
                    ),
                  ]
                ),
              )

        ],
      )
    );
  }
}
  






 