import 'package:flutter/material.dart';
import 'package:foodhub/pages/login.dart';
import 'package:foodhub/widgets/_widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFFff5c30),
                    Color(0xffe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Text(" "),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 60.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Signup!",
                            style: AppWidget.HeadlineboldTextFeildStyle(),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: AppWidget.semiboldTextFeildStyle(),
                                prefixIcon: Icon(Icons.person)),
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email ID",
                                hintStyle: AppWidget.semiboldTextFeildStyle(),
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: AppWidget.semiboldTextFeildStyle(),
                                prefixIcon: Icon(Icons.key)),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            width: 200,
                            decoration: BoxDecoration(color: Color(0Xffff5722)),
                            child: Center(
                                child: Text(
                              "SignUp!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontFamily: "Poppins1",
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Text(
                      "Already have an account!, LogIn",
                      style: AppWidget.semiboldTextFeildStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
