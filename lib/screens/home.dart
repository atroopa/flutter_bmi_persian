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

  double _bmiResult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "دقیق ترین معیار جهانی چاقی",
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
                  width: 130,
                  child: TextField(
                    controller: _heighController,
                    style: TextStyle(
                      fontSize: 42,fontWeight: FontWeight.w300,
                      color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "(متر)قد",
                      hintStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      fontSize: 42,fontWeight: FontWeight.w300,
                      color: accentHexColor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "(کیلوگرم)وزن",
                      hintStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double _h = double.parse(_heighController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if(_bmiResult > 25){
                    _textResult = "شما اضافه وزن دارید" ;
                  }else if(_bmiResult >= 18.5 && _bmiResult <= 25){
                    _textResult = "وزن شما نرمال می باشد" ;
                  }else{
                    _textResult = "شما کبمود وزن دارید" ;
                  }
                });
              },
              child: Container(
                color: Colors.black87,
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),

                child: Text("محاسبه کن",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: accentHexColor
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(_bmiResult.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 90,
                  
                  color: accentHexColor
                ),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textResult.isNotEmpty,
              child:Container(
                child: Text(
                  "$_textResult",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor,
                  ),
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