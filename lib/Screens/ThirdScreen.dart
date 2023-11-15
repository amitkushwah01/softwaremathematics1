import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Screens/customeWidget.dart';

class Third extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(height: double.infinity,width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              poster(),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 40,),
                  Container(
                      padding: EdgeInsets.only(
                        bottom: 5, // Space between underline and text
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                          color: Colors.amber, 
                          width: 1.0, // Underline thickness
                          ))
                        ),
                      child: Text(
                          "Services",
                          style: TextStyle(
                          color: Colors.black,
                          ),
                        ),
                      )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber[100]
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/latter2.png',height: 100),
                        Text('Product Registration'),
                        SizedBox(height: 10,)
                      ],
                    )
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
    
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[100]
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/latter1.png',height: 100),
                        Text('Service Request'),
                        SizedBox(height:10),
                      ],
                    )
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
    
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[100]
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/wait.png',height: 100),
                        Text('Complaint Status'),
                        SizedBox(height: 10,),
                      ],
                    )
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.04,),
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[100]
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/list.png',height: 100),
                        Text('Product Listing'),
                        SizedBox(height: 10,)
                      ],
                    )
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 40,),
                                  Container(
                      padding: EdgeInsets.only(
                        bottom: 5, // Space between underline and text
                      ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                          color: Colors.amber, 
                          width: 1.0, // Underline thickness
                          ))
                        ),
                      child: Text(
                          "Recenlty Purchased Product ",
                          style: TextStyle(
                          color: Colors.black,
                          ),
                        ),
                      )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}