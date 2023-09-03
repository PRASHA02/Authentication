import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'emailauthotp_screen.dart';



class EmailAuth extends StatefulWidget {
  const EmailAuth({super.key});

  @override
  State<EmailAuth> createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -100,
              right: -100,
              child: Container(
                width: mediaQuery.width*0.6,
                height: mediaQuery.height*0.3,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFF00F1FF),
                      Color(0xFF399197),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 80, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'Enter Your Email\nAddress',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize:30,color: Colors.black),
                  ),
                    ),
                  const SizedBox(height: 20),
                  Text(
                  'We will send an OTP verification to you',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize:18,color: Colors.grey[500]),
                  ),
                    ),
                   
                  const SizedBox(height: 30),
                  Container(
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 169, 168, 168),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 5),
                          borderRadius: BorderRadius.circular(18),
                          
                        ),
                        hintText: "Enter Email Address",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 60),
                   Align(
                    alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                              color:Colors.grey,
                              offset: const Offset(
                                5.0,
                                5.0,
                     
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), 
                ]
      ),
                    child: ElevatedButton(
                      onPressed: () {
                        //hey man call the api of firebase to send authentification
                         Navigator.push(
                    context,MaterialPageRoute(builder: (context) => Otp()),
                                  );
                                },
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        minimumSize: Size(250, 50),
                      ),
                      child: const Text("Send OTP"),
                    ),
                  ),
                   ),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}

