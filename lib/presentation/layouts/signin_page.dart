import 'package:flutter/material.dart';
import 'package:princeton_hive/utils/consts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2, top: MediaQuery.of(context).size.height*0.024),
                child: Image.asset("assets/image/Princeton Logo.png"),
              ),
              Image.asset("assets/image/welcome_screen.png"),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff4A164B),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: MediaQuery.of(context).size.height / 2.1,
                //color: Color(0xff4A164B),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.053),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.024),
                        child: Text(
                          "Sign In",
                          style:
                              TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.029,fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your mail ID",
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.025,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.025,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.6),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/forgot_password');
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Color(0xffFFC107)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.933,
                          height: MediaQuery.of(context).size.height*0.058,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFC107)),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/profile');
                                print(MediaQuery.of(context).size.width);
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*0.024, color: Colors.black),
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.265),
                        child: Text(
                          "New User? Sign up",
                          style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.0167),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.048,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
