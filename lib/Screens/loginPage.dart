import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Models/LoginModel.dart';
import 'package:softwaremathematics1/Screens/Datashow.dart';
import 'package:softwaremathematics1/Screens/customeWidget.dart';
import 'package:softwaremathematics1/Screens/second.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget
{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var passController = TextEditingController();

  late Future<LoginModel> loginmodelobj;

  @override
  // void initState() {
  //   loginmodelobj=loginfun(123456 , 9877797604);
  //   super.initState();
  // }

  var textcolor = Colors.grey;

  var MobileController = TextEditingController();

  var PassController = TextEditingController();

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
                    Text('Login',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                    SizedBox(height: MediaQuery.of(context).size.height*.05),

                    SizedBox(
                      width: MediaQuery.of(context).size.width*.8,
                      height: MediaQuery.of(context).size.height*.08,
                      child: mytextfield2(hint: 'Mobile Number', keyboard_type: TextInputType.number , mycontroller: MobileController)
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.8,
                      height: MediaQuery.of(context).size.height*.08,
                      child: mytextfield2(hint: 'M-PIN', keyboard_type: TextInputType.number , prefixicon: Icon(Icons.remove_red_eye) , mycontroller:passController )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.7,),
                        Text("Forgot M-PIN?",style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*.30,),
                        Text("Create an Account? ",style: TextStyle(fontSize: 14,),),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Second(),)
                            );
                          },
                          child: Text(" Register",style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),)
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.025),
                    Container(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.06,
                      decoration: BoxDecoration(color: bottonColor12(),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: (){
                          var localMob = MobileController.text.toString();
                          var localPass = passController.text.toString();
                          // print(localMob);print(localPass);
                          Navigator.push( 
                            context , MaterialPageRoute(
                              builder: (context) => DataShow(localMob, localPass),
                            )
                          );
                        },
                        child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),))
                      )
                    ),
                    // FutureBuilder(
                    //   future: loginmodelobj,
                    //   builder:(_, snapshot) {
                    //     // return Container();
                    //     return Text(snapshot.data!.data!.dto!.mobileno!);
                    //   },
                    // ),
                    SizedBox(height: 10,),

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