import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

// Login Page

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
                        color: Color.fromARGB(255, 21, 160, 37),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'example@email.com',
                        icon: Icon(Icons.email)
                      ),
                    ),
                    // SizedBox(height: 20,),
                    TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color:Colors.white,),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                        decoration: InputDecoration(
                          labelText: 'phone number',
                          icon: Icon(Icons.phone)
                        ),
                      ),
                    // SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              icon: Icon(Icons.key),
                            ),
                            ),
                          ),
                      ]
                    ),
                                
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        icon: Icon(Icons.key),
                      ),
                    ),
                    SizedBox(height: 20,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: ()=>{}, style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 91, 210, 95),
                      ),child: const Text("login",style: TextStyle(color: Colors.white,),)),
                      SizedBox(height: 20,),
                     Text("Don't have an account?", style: TextStyle(color: Colors.white,fontSize: 13),),
                     SizedBox(height: 20,),
                     OutlinedButton(onPressed: ()=>{}, style: ElevatedButton.styleFrom(
                      ),child: const Text("Signup",style: TextStyle(color: Colors.white),)),
                    
                    ],
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

// Uploading
