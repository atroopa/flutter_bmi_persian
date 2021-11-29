import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController _heighController = TextEditingController();
  TextEditingController _weightController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: accentHexColor,
            fontWeight: FontWeight.w300,
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left:50),
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 42,fontWeight: FontWeight.w300,
                      color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "قد",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 42,fontWeight: FontWeight.w300,
                      color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "وزن",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Container(
              child: Text("نتیجه",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor
                ),
              ),
            ),
            Container(
              child: Text("10",
                style: TextStyle(
                  fontSize: 90,
                  
                  color: accentHexColor
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text(
                "وزن نرمال",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: accentHexColor,
                ),
              ),
            ),
            SizedBox(height: 10,),
            LeftBar(40),
            SizedBox(height: 20,),
            LeftBar(70),
            SizedBox(height: 20,),
            LeftBar(40),
            SizedBox(height: 20,),
            RightBart(70),
            SizedBox(height: 50,),
            RightBart(70),


            
          ],
        ),
      ),
    );
  }
}
//barWidth