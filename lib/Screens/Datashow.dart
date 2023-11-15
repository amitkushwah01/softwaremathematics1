import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Models/LoginModel.dart';
import 'package:softwaremathematics1/Screens/customeWidget.dart';
import 'package:softwaremathematics1/Screens/loginPage.dart';

class DataShow extends StatefulWidget
{
  var mymob , mypass;
  DataShow(this.mymob , this.mypass);

  @override
  State<DataShow> createState() => _FinalPageState();
}

class _FinalPageState extends State<DataShow> {
  late Future<LoginModel> loginModelobj;

  @override
  void initState(){
    loginModelobj=loginfun(widget.mymob , widget.mypass);
    // print(widget.mymob);
    // print(widget.mypass);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logged In Succesful'),backgroundColor: Colors.pink[200]),
      body: FutureBuilder(
        future: loginModelobj,
        builder:(context, snapshot) {
          if(snapshot.hasData)
          {
            try{
              return Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.35,),
                dataRow("I'd  ", snapshot.data!.data!.dto!.id.toString()),SizedBox(height: 10),
                dataRow('Name  ', snapshot.data!.data!.dto!.name),SizedBox(height: 10),
                dataRow('Mobile Number  ', snapshot.data!.data!.dto!.mobileno!),SizedBox(height: 10),
                dataRow("Email I'D  ", snapshot.data!.data!.dto!.emailid),SizedBox(height: 10),
                // dataRow('Created By  ',snapshot.data!.data!.dto!.createdby ),SizedBox(height: 10),
                // dataRow("Created Date ", snapshot.data!.data!.dto!.createddate),
                // dataRow("Rect Status ",snapshot.data!.data!.dto!.recstatus! ),
                // dataRow("syncstatus ", snapshot.data!.data!.dto!.syncstatus!),
                // dataRow('Role Code', snapshot.data!.data!.dto!.rolecode),
                // dataRow('Role Admin', snapshot.data!.data!.dto!.rolename),
                // dataRow('Class Name ', snapshot.data!.data!.dto!.classname),
                // dataRow('Resource Name ', snapshot.data!.data!.dto!.resourcename),
                // dataRow('Password ', snapshot.data!.data!.dto!.password),
                // Center(child: Text(snapshot.data!.data!.dto!.mobileno!)),
                // Text(snapshot.data!.data!.dto!.id.toString()),
                // Text(snapshot.data!.data!.dto!.createdby!),
                // Text(snapshot.data!.data!.dto!.createddate!),
                // Text(snapshot.data!.data!.dto!.recstatus!),
                // Text(snapshot.data!.data!.dto!.syncstatus!),
                // Text(snapshot.data!.data!.dto!.createdby!),
              ],
            );
            }catch(e)
            {
              return SizedBox(height: double.infinity,width: double.infinity,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    Text("Provided Information are not Match",style: TextStyle(fontSize: 14,color: Colors.grey , fontWeight: FontWeight.bold),),
                    Text(" Something Went Wrong",style: TextStyle(color: Colors.amber,fontSize: 14 , fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*.7,
                        height: MediaQuery.of(context).size.height*.06,
                        decoration: BoxDecoration(color: bottonColor1(),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Try Again',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),))
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your Error is ',style: TextStyle(fontSize: 12 , color: Colors.grey , fontWeight: FontWeight.bold), ),
                        Text('$e' ,style: TextStyle(fontSize: 12 , color: Colors.red , fontWeight: FontWeight.bold), ),
                      ],
                    ),
                  ],
                ),
              );
            }
          }else if(snapshot.hasError)
          {
            print(snapshot.error);
            return Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.4,),
                Text("Provided Information are not Match",style: TextStyle(fontSize: 14,color: Colors.grey , fontWeight: FontWeight.bold),),
                Text(" Something Went Wrong",style: TextStyle(color: Colors.amber,fontSize: 14 , fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
              ],
            );
          }else
          {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}