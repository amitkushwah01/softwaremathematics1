import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Screens/customeWidget.dart';
import 'package:softwaremathematics1/Screens/second.dart';

// ignore: must_be_immutable
class First extends StatelessWidget
{
  var textcolor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: mybgcolor(),
        height: double.infinity,
        width: double.infinity,
        
        child:
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height*.25,
              child: Container(
                height : MediaQuery.of(context).size.height,
                 width : MediaQuery.of(context).size.width ,
                 decoration: BoxDecoration(
                  color : Colors.white,
                  borderRadius: BorderRadius.circular(40)
                 ),
                 child:Column(
                  children: [
                    SizedBox(height: 60),
                    Text('OTP Authentication',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    SizedBox(height: MediaQuery.of(context).size.height*.04,),
                    Text('An authetication code has been sent to ',style: TextStyle(color: textcolor),),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text('999 999 999',style: TextStyle(color: textcolor),),
                    SizedBox(height: MediaQuery.of(context).size.height*.08),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      child: mypinpit()
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I din't received code.",style: TextStyle(fontSize: 14,color: textcolor),),
                        Text("Resend Code",style: TextStyle(color: Colors.amber,fontSize: 14),),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.09),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context , MaterialPageRoute(
                            builder: (context) => Second(),
                          )
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*.7,
                        height: MediaQuery.of(context).size.height*.06,
                        decoration: BoxDecoration(color: bottonColor1(),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),))
                      ),
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("By Signing up, you agree to our.",style: TextStyle(fontSize: 14,color: textcolor),),
                        SizedBox(height: 5,),
                        Text("Term and Conditions",style: TextStyle(color: Colors.amber,fontSize: 14),),
                      ],
                    ),

                  ],
                 ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height*.19,
              right: MediaQuery.of(context).size.width*.39,
              child: CircleAvatar(backgroundColor: Colors.white,
                minRadius: 45,
                child: Container(height: 80,width: 80,
                  decoration: BoxDecoration(color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.person_2_outlined,size: 40,color: Colors.grey,)
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}