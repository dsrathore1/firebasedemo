import 'package:demo/Pages/Login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String email = "";
  bool _secureText = true;

  Icon cusIcon = Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  maxLength: 50,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 3.5,
                      ),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _password,
                  obscureText: _secureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 3.5,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: cusIcon,
                      onPressed: () {
                        setState(() {
                          if (this.cusIcon.icon == Icons.visibility) {
                            this.cusIcon = Icon(Icons.visibility_off);
                            this._secureText = false;
                          } else if (this.cusIcon.icon ==
                              Icons.visibility_off) {
                            this.cusIcon = Icon(Icons.visibility);
                            this._secureText = true;
                          }
                        });
                      },
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        90,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 120,
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have a account?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
