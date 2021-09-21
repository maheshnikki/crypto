import 'package:crypto/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 380,
              padding: EdgeInsets.all(20),
              // color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.amberAccent[700],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Cryto',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Please Login TO Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,color: Colors.black),
                              labelText: 'Email',
                              hintText: 'Enter your Email',
                              labelStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password,color: Colors.black),
                              labelText: 'Password',
                              hintText: 'Enter your Password',
                              labelStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 200,
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.amberAccent[700],
                                  fontSize: 36,
                                ),
                              ),
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'FORGOT PASSWORD ?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                  ),
                  Center(
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 60,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                            ),
                          ),
                          color: Colors.amberAccent[700],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0, size.height-50);
//     path.lineTo(0, size.height);
//     var controllPoint = Offset(50, size.height);
//     var endPoint = Offset(size.width / 2, size.height);
//     path.quadraticBezierTo(
//         controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return true;
//   }
// }
