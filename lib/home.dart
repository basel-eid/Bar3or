import 'package:flutter/material.dart';
import 'Re.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
        }, icon: Icon(Icons.arrow_circle_left_sharp)),
        title: Text("Home Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("asset/Screenshot 2024-06-02 151801.png",height: 400,width: 400,),
        ],
      )
    );
  }
}
