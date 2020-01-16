import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.asset('lib/images/tuteelogo.png'),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.brown, fontSize: 20),
                    ),
                    Text(
                      ' SIGN UP',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.brown[50],
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.accessibility,
                                color: Colors.brown,
                              ),
                            ),
                            Text(
                              ' E M A I L',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom:10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.brown[50],
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.lock,
                                color: Colors.brown,
                              ),
                            ),
                            Text(' P A S S W O R D',
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.brown,
                        child: Center(
                          child: Text('S I G N  I N',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15, right:15, bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:10, right:5),
                          child: SignInButton(
                            Buttons.AppleDark,
                            text: "Sign in",
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:5, right:5),
                          child: SignInButton(
                            Buttons.Google,
                            text: "Sign in",
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:5, right:10),
                          child: SignInButton(
                            Buttons.Facebook,
                            text: "Sign in",
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
