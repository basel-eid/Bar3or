import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
class Register extends StatelessWidget {
  final TextEditingController Name = TextEditingController();
  final TextEditingController Password = TextEditingController();
  final TextEditingController Confirm = TextEditingController();
  final TextEditingController P_Num = TextEditingController();
   Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

                      controller: Name,

                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password" ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                      obscureText: true,
                      controller: Password,

                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Confirm Password" ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                      obscureText: true,
                      controller: Confirm,

                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Phone Number" ,border:OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.blue,width: 2))),
                      controller: P_Num,
                    ),
                    SizedBox(height: 30),
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },child: Text("Sign Upp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),color: Colors.white,shape: RoundedRectangleBorder(side: BorderSide(color: Colors.lightBlue
                        ,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(60)),)
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
