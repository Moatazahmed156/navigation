import 'package:flutter/material.dart';
import 'package:navigation/componentes/circular_card.dart';
import 'package:navigation/componentes/card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Home Screen" ,style: TextStyle(color: Color(0xff953c81) , fontFamily: "Lobster" , fontWeight: FontWeight.bold  ,fontSize: 30)),
            Row(
              children: [
                Icon(Icons.favorite_border , size: 25,),
                SizedBox(width: 15,),
                Icon(Icons.send , size: 25,),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularCard(),
              CircularCard(),
              CircularCard(),
            ],
          ),
          SizedBox(height: 30,),
          MainCard(),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xff953c81),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Text("Open" , style: TextStyle(color: Colors.white , fontSize: 20),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'sarah ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  ),
                ],
                style: TextStyle(fontSize: 15)
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(" View all 109 comments..." , style: TextStyle(color: Colors.grey), textAlign: TextAlign.start,),
            )
          ),
        ],
      ),
    );
  }
}
