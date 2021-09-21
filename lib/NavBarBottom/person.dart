import 'package:crypto/loginPage.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            'Log out',
                            style: TextStyle(
                              color: Colors.amberAccent[700],
                              fontSize: 36,
                            ),
                          ),
                          color: Colors.black,
                        ),
    );
  }
}