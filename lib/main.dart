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
          backgroundColor: Color.fromRGBO(22, 22, 41, 0.632),
          title: const Text(
            "Welcome to winx player",
            style: TextStyle(
              color: Color.fromARGB(211, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Color.fromRGBO(11, 11, 20, 0.843),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),

                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Text(
                      "Hi, login to enjoy your favorite music",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 21, 219, 44),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Text(
                    //   "Enter email and password to continue",
                    //   style: TextStyle(
                    //     color: Color.fromARGB(255, 5, 5, 5),
                    //     fontSize: 12,
                    //   ),
                    // ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'you@email.com',
                        icon: Icon(Icons.email)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        icon: Icon(Icons.key),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.headphones),
          onPressed: () => {},
        ),
      ),
    );
  }
}
