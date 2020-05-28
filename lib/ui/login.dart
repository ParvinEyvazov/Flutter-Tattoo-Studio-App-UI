import 'package:flutter/material.dart';
import 'package:tattoo_studio/utils/loginImageClipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tattoo_studio/widgets/loginButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: LoginImageClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -120,
                          bottom: -280,
                          left: 0,
                          child: Image.asset(
                            "assets/images/login.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            height: 340,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE2B0FF).withOpacity(.8),
                                  Color(0xFF9F44D3).withOpacity(.05),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          top: 50,
                          child: Text(
                            "NXT",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Positioned(
                          left: 72,
                          top: 86,
                          child: Text(
                            "LVL",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 158,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Tattoo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                TextSpan(
                                  text: " Studio",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 0,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFFCBCBCB),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            buildUserName(),
            SizedBox(height: 20),
            buildPassword(),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
                LoginButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  //TEXTFIELDS
  Widget buildUserName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 4, left: 24, right: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
            ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(Icons.person),
          ),
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 4, left: 24, right: 16),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Pass",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
            ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(FontAwesomeIcons.eye),
          ),
        ),
      ),
    );
  }
}
