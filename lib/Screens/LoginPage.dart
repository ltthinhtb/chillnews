import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 650.0,
            child: RotatedBox(
              quarterTurns: 2,
              child: Container(),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                    ),),
                    Card(
                      margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, color: Colors.black12,),
                          suffixIcon: Icon(Icons.check_circle, color: Colors.black12,),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.black12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                        ),
                      ),
              ),
                    Card(
                      margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: Colors.black12,),
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.black12),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.pink,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                        child: Text("Login", style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    Text("Forgot your password?",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 100.0,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("or, connect with"),
                    SizedBox(height: 20.0,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Facebook"),
                            textColor: Colors.white,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Google"),
                            textColor: Colors.white,
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width: 20.0,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        FlatButton(
                          child: Text("Sign Up"),
                          textColor: Colors.indigo,
                          onPressed: (){},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
