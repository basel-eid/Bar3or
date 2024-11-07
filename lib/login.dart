import 'package:flutter/material.dart';
import 'Re.dart';
class login extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password= TextEditingController();

   login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
        title: Text("Login" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Center(
        child: SingleChildScrollView(
          child: Container(

            width: double.infinity,
            padding: EdgeInsets.all(100),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("asset/Screenshot 2024-06-02 151801.png"),
                      radius: 50,
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(icon: Icon(Icons.mail),labelText: "Email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          
                      controller: email,
          
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(icon: Icon(Icons.lock),labelText: "Password" ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                      obscureText: true,
                      controller: password,
          
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(onPressed: (){
               if(email.text == "bbakr" && password.text=="12345"){
                 print("Done");
               }
               else{
                 print("Failed");
               }
              },child: Text("Login"), color: Colors.blue,
                hoverColor: Colors.lightBlue,
          
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
          
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  }, 
                      child: Text("Sign Up")),
                ],
              ),

            
            ]
          ),),
        ),
      ) ,
    );

  }
}
