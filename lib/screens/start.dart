import 'package:flutter/material.dart';
import 'package:navigation/screens/home.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''), ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ClipPath(
              clipper: TopBottomCurveClipper(),
              child: Container(
                width: double.infinity,
                height: 450,
                color: Color(0xfff8e9c6),
              ),
            ),
            SizedBox(height: 70,),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Unplug your life" ,style: TextStyle(color: Color(0xff953c81), fontFamily: "Lobster" , fontWeight: FontWeight.bold  ,fontSize: 30)),
                  SizedBox(height: 15,),
                  Text("Set up different measures to start" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                  Text("with your life" ,style: TextStyle(color: Colors.grey ,fontSize: 17)),
                  SizedBox(height: 80,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Home())
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff953c81),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text("Get Started" , style: TextStyle(color: Colors.white , fontSize: 20),),
                      )

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class TopBottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double curveHeight = 70.0;

    Path path = Path();
    path.moveTo(0, curveHeight);
    path.quadraticBezierTo(width / 2, 0, width, curveHeight);
    path.lineTo(width, height - curveHeight);
    path.quadraticBezierTo(width / 2, height, 0, height - curveHeight);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}