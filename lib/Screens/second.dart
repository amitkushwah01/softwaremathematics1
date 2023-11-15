import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Screens/ThirdScreen.dart';
import 'package:softwaremathematics1/Screens/customeWidget.dart';
import 'package:softwaremathematics1/Screens/loginPage.dart';

// ignore: must_be_immutable
class Second extends StatelessWidget
{
  var textcolor = Colors.grey;
  var bgcolor = mybgcolor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: bgcolor,
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
                    SizedBox(height: 60,),
                    Text('Getting Started',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text('Create a Account to continue ',style: TextStyle(color: textcolor),),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),

                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      child: mytextfield(hint: 'Phone No.', keyboard_type: TextInputType.number)
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      child: mytextfield(hint: 'OTP' , keyboard_type: TextInputType.number)
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      child: mytextfield(hint: 'First Name' ,  keyboard_type: TextInputType.name)
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      child: mytextfield(hint: 'Last Name' ,  keyboard_type: TextInputType.name)
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      child: mytextfield(hint: 'Email' , keyboard_type: TextInputType.emailAddress)
                    ),
                    SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account? .",style: TextStyle(fontSize: 14,color: textcolor),),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage(),)
                            );
                          },
                          child: Text("Sign in",style: TextStyle(color: Colors.black,fontSize: 14 , fontWeight: FontWeight.w600),)
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.04),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context , MaterialPageRoute(
                            builder: (context) => Third(),
                          )
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*.7,
                        height: MediaQuery.of(context).size.height*.06,
                        decoration: BoxDecoration(color: bottonColor12(),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Next',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),))
                      ),
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