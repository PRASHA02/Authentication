import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:statedemo/presentation/pages/emailauth_screen.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SignInScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmailAuth()));
            },
            style: ElevatedButton.styleFrom(shape: StadiumBorder(),
            backgroundColor: Colors.white,
            side: BorderSide(color: Colors.blue, width: 1)),
            child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Sign In With Email Id",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      )
          );
  }
}
