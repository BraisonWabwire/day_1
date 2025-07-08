import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(22, 22, 41, 0.632),
        appBar: AppBar(
          backgroundColor:Color.fromRGBO(22, 22, 41, 0.632),
          title: const Text("Welcome to winx player", 
          style: TextStyle(color: Color.fromARGB(211, 255, 255, 255),fontWeight:FontWeight.bold,),
          ),
          centerTitle: true,

        ),
        body:Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/home_image.jpg'),
                fit: BoxFit.cover,
                ),
                color: Color.fromRGBO(11, 11, 20, 0.843),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
                ),
                
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(30),
                child:const Text("Hi, enjoy your favorite music", style: TextStyle(color: Color.fromARGB(255, 5, 5, 5),fontSize: 15)),
              ),
            ),
          ],
        ) ,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.headphones,
          ),
          onPressed: () => {},
        ),
      ),

    );
  }
}
