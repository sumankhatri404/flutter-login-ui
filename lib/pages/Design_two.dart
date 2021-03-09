import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:project/pages/Design_one.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
        child: Column(
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(text: 'Signup',style: TextStyle(color:Colors.black87,fontSize: 80, fontWeight: FontWeight.w600)),
              TextSpan(text: '.',style: TextStyle(color:Colors.green,fontSize: 80, fontWeight: FontWeight.w600))
           
            ]
            ),
            ),
SizedBox(height:20),

TextField(
  decoration: InputDecoration(hintText: 'USERNAME'),
),
SizedBox(height:20),

TextField(
  decoration: InputDecoration(hintText: 'EMAIL'),
),
SizedBox(height:20),

TextField(
  decoration: InputDecoration(hintText: 'PASSWORD'),
),
SizedBox(height:20),

TextField(
  decoration: InputDecoration(hintText: 'CONFIRM PASSWORD'),
),
 SizedBox(height:20),

              Row(
                children: [
                  Expanded(
                                      child: MaterialButton(
                                        elevation: 10,

                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Text("LOGIN"),
                      ),
                  ),
                ],
              ),
                            Row(
                children: [
                  Expanded(
                                      child: OutlineButton.icon(
                                        icon: Icon(FontAwesome.facebook),
                                     

                                     shape: RoundedRectangleBorder
                                     (borderRadius: BorderRadius.circular(26)),
                     
                      onPressed: (){},
                      label: Text("Login with facebook"),
                      ),
                  ),
                ],
              ),


              SizedBox(height:20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Designone()));
                    },
                                      child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(
                            text:"Already have an account ?",
                            style:TextStyle(color:Colors.black87),

                          ),TextSpan(
                            text:" Login",
                            style:TextStyle(color:Colors.green,fontWeight: FontWeight.w600),
                            
                          )
                        ]                    ),
                      
                    ),
                  ),
                ],
              )

          ],
        ),
      )),
    );
  }
}
