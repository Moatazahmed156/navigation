import 'package:flutter/material.dart';
import 'package:navigation/componentes/dots.dart';
import 'package:navigation/screens/home.dart';
import 'package:navigation/screens/start.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 240,
            height: 360,
            decoration: BoxDecoration(
                color: Color(0xfff8e9c6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(500),
                  bottomRight: Radius.circular(500),
                )
            ),
          ),
          SizedBox(height: 90,),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("get started with yoga" ,style: TextStyle(color: Color(0xff953c81) , fontFamily: "Lobster" , fontWeight: FontWeight.bold  ,fontSize: 30)),
                SizedBox(height: 15,),
                Text("Easily get started with your yoga" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                Text("journey" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                SizedBox(height: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>Home())
                          );
                        },
                        child: Text("Skip" , style: TextStyle(color: Colors.black , fontSize: 17),)
                    ),
                    Dots(index: 2,),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>GetStarted())
                          );
                        },
                        child: Text("Next" , style: TextStyle(color: Colors.black , fontSize: 17),)
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
