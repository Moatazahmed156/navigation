import 'package:flutter/material.dart';
import 'package:navigation/componentes/dots.dart';
import 'package:navigation/screens/home.dart';
import 'package:navigation/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80,),
            Container(
              width: 240,
              height: 360,
              decoration: BoxDecoration(
                color: Color(0xfff8e9c6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(500),
                  bottomLeft: Radius.circular(500),
                )
              ),
            ),
            SizedBox(height: 90,),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Practice mindfulness" ,style: TextStyle(color: Color(0xff953c81) , fontFamily: "Lobster" , fontWeight: FontWeight.bold  ,fontSize: 30)),
                  SizedBox(height: 15,),
                  Text("Get on the right track towards" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                  Text("mindfulness" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                  SizedBox(height: 155,),
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
                      Dots(index: 1,),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondScreen())
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
