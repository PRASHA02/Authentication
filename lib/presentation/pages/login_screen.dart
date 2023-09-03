import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:statedemo/presentation/widgets/circle_shape.dart';

import 'signin_screen.dart';
@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: mediaQuery.height,
            width: mediaQuery.width,
            child:Stack(
              children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Stack to show background image and text on top
                  Stack(
                    //alignment: Alignment.topLeft,
                    children: [
                      // Background images
                      Positioned(
                          child: Image.asset(
                              'assets/svg/kobu-agency-TWIRIAizZFU-unsplash 1.png',fit:BoxFit.cover,width: mediaQuery.width,)),
                      // Positioned(child: ),
                      Positioned(child: Image.asset(
                              'assets/svg/Overlay.png',fit:BoxFit.cover,width: mediaQuery.width),),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 120,
                            ),
                            Center(
                              child: Text(
                                "Make Every Sip",
                                style: TextStyle(
                                  wordSpacing: 1,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Count.",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1E1E1E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  // LoginForm widget
                  const SignInScreen(),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Text("Already a User ,",style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Log In',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ))),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Divider with text "or"
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30,0,0,0),
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
            
                          //padding: EdgeInsets.symmetric(horizontal: 1.0),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              GradientCircularDesign(
                                radius: 24,
                                gradientColors: [
                                  Color(0xFF00F1FF),
                                  Color(0xFF399197),
                                ],
                              ),
                              Text(
                                "or",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                             
                            ],
                          ),
            
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0,0,30,0),
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                    height: 50,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(
                        decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(
                      color:Colors.grey,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), 
                  ]
                ),
          child: ElevatedButton(
            onPressed: (){
              
            },
            style: ElevatedButton.styleFrom(shape: StadiumBorder(),
            backgroundColor: Colors.white,
            side: BorderSide(color: Colors.blue, width: 1)),
            child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Image(image: AssetImage('assets/svg/google logo.png'),fit: BoxFit.cover,),
                        SizedBox(width: 10),
                        Text(
                              "Continue With Google",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                      ],
                    ),
                  ),
          ),
        ),
      )
          ),
                    ],
                  ),
                ],
              ),
              ]
            )
          ),
        ),
      ),
    );
  }
}
