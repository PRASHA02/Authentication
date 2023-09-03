import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}


class _OtpState extends State<Otp> {
 OtpFieldController _otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
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
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 80, 0,0),
              child: const Text(
                'Confirm Your Code',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 0,0),
              child: const Text(
                'Enter the code sent to you gmail',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(height: 100),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Send code again',
                    style: TextStyle(fontSize: 20, color:Colors.lightBlue),
                  )),
            ),
            const SizedBox(height: 80),
            Center(
              child: Container(
                height: mediaQuery.height * 0.07,
                width: mediaQuery.width * 0.9,
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
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 43, 156, 249)),
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
              top:mediaQuery.height/4,
              width: mediaQuery.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPTextField(
                    controller: _otpController,
                    
                    otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Color.fromARGB(255, 248, 245, 245),
                         borderColor: Colors.blue,
                         
                         
                      ),
                      
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 75,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                    ),
                    
                    onChanged: (pin) {
                      print('changed: $pin');
                    
                    },
                    onCompleted: (pin) {
                      print('completed: $pin');
                    },
                    
                  )
                ],
              ),
            ),
            
          ],
        ));
  }
}