import 'package:crypto/loginPage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amberAccent[700],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Existing user ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        height: 70,
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (LoginPage())),
                            );
                          },
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
                    ),
                  ],
                ),
              ),
              // color: Colors.amberAccent[700],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign up with',
                      style: TextStyle(
                        color: Colors.amberAccent[700],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    'CryptoCurrency',
                    style: TextStyle(
                      color: Colors.amberAccent[700],
                      fontSize: 36,
                      // fontWeight:
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person,color: Colors.amberAccent),
                              labelText: 'User Name',
                              hintText: 'Enter your UserName',
                              labelStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent[700],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          // Container(
                          //   child: Row(
                          //     children: <Widget>[
                          //       Radio(
                          //         value: 1,
                          //         groupValue: _value,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             _value = value;
                          //           });
                          //         },
                          //       ),
                          //       Text(
                          //         'Male',
                          //         style: TextStyle(
                          //           color: Colors.amberAccent[700],
                          //         ),
                          //       ),
                          //       Radio(
                          //         value: 2,
                          //         groupValue: _value,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             _value = value;
                          //           });
                          //         },
                          //       ),
                          //       Text(
                          //         'Female',
                          //         style: TextStyle(
                          //           color: Colors.amberAccent[700],
                          //         ),
                          //       ),
                          //       Radio(
                          //         value: 3,
                          //         groupValue: _value,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             _value = value;
                          //           });
                          //         },
                          //       ),
                          //       Text(
                          //         'Others',
                          //         style: TextStyle(
                          //           color: Colors.amberAccent[700],
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          TextFormField(
                            decoration: InputDecoration(
                               prefixIcon: Icon(Icons.email,color: Colors.amberAccent),
                              labelText: 'Email',
                              hintText: 'Enter your Email',
                              labelStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent[700],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TextFormField(
                            decoration: InputDecoration(
                               prefixIcon: Icon(Icons.password,color: Colors.amberAccent),
                              labelText: 'Password',
                              hintText: 'Enter your Password',
                              labelStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent[700],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
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
