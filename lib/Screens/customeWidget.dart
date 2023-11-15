import 'dart:convert';
import 'package:http/http.dart' as httpClien;
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:softwaremathematics1/Models/LoginModel.dart';

Widget mytextfield({mycontroller , hint , keyboard_type , prefixicon , fieldfontSize})
{
  return
    TextField(
      controller: mycontroller,
      keyboardType: keyboard_type,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        labelText: hint,
        labelStyle: TextStyle(fontSize: 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
      ),
    );
}
Widget mytextfield2({mycontroller , hint , keyboard_type , prefixicon , fieldfontSize})
{
  return
    TextField(
      controller: mycontroller,
      keyboardType: keyboard_type,
      decoration: InputDecoration(
        suffixIcon: prefixicon,
        labelText: hint,
        labelStyle: TextStyle(fontSize: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
      ),
    );
}

Widget dataRow(value1 , value2)
{
  return
    Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(value1,style: TextStyle(fontSize: 15 , color: Colors.grey , fontWeight: FontWeight.bold), ),
      Text(value2,style: TextStyle(fontSize: 15 , color: Colors.amber, fontWeight: FontWeight.bold), ),
    ],
  );
}

Color mybgcolor()
{
  var c = const Color(0xFFF8B1AB);
  return c as Color;
}
Color bottonColor1()
{
  return Colors.amber as Color;
}
Color bottonColor12()
{
  return Color.fromARGB(255, 248, 143, 134);
}
Widget mypinpit()
{
  return 
  Pinput(
    length: 4,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    keyboardType: TextInputType.number,
    showCursor: true,
    androidSmsAutofillMethod:
    AndroidSmsAutofillMethod.smsUserConsentApi,
  );
}

Image poster()
{
  return Image.asset('assets/sm1.png');
}
Image icon1()
{
  return Image.asset('assets/latter2.png',height: 100,);
}
Image icon2()
{
  return Image.asset('assets/latter2.png',height: 100,);
}
Image icon3()
{
  return Image.asset('assets/latter2.png',height: 100,);
}
Image icon4()
{
  return Image.asset('assets/latter2.png',height: 100,);
}
Future<LoginModel> loginfun(mob , pass) async {
  var headers = {
    'Content-Type': 'application/json',
  };
  var request = httpClien.Request(
      'POST',
      Uri.parse(
          'https://japi.softwaremathematics.com/login-service-mongo/api/loginservice/v2/login'));
  request.body = json.encode({
    "username": mob,
    "password": pass,
    "resourcecode": "JAINA"
  });
  request.headers.addAll(headers);

  httpClien.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var data = await jsonDecode(utf8.decode(await response.stream.toBytes()));
    print('ok');
    return LoginModel.fromJson(data);
  } else {
    print(response.reasonPhrase);
    print('not ok');
    return LoginModel();
  }
}
/*

method type:- POST

request:- {"username":"9877797604","password":"123456","resourcecode":"JAINA"}

api:- https://japi.softwaremathematics.com/login-service-mongo/api/loginservice/v2/login

*/