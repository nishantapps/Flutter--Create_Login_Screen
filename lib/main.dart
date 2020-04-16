import 'package:flutter/material.dart';

void main() {
  runApp(LoginDemo());
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Text(
              'Login',
              style: TextStyle(
                letterSpacing: 4.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            backgroundColor: Colors.purpleAccent,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201903191911',
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                  ),
                  title: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                  ),
                  title: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ButtonTheme(
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            print('Login Button Tapped');
                          },
                          color: Colors.purpleAccent,
                          textColor: Colors.white,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
