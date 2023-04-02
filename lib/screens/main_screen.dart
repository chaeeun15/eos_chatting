import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../chatting/chat/chat_bubble.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Welcome ",
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                                children: [
                              TextSpan(
                                  text:
                                      isSignupScreen ? 'to EOS chat!' : 'back',
                                  style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ])),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          isSignupScreen
                              ? "Signup to continue"
                              : "Signin to continue",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 150,
                child: AnimatedContainer(
                  height: isSignupScreen ? 300.0 : 280.0,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5,
                        )
                      ]),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                ),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                  height: 2,
                                  width: 55,
                                  color: !isSignupScreen
                                      ? Colors.green
                                      : Colors.white,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "SIGNUP",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                  height: 2,
                                  width: 55,
                                  color: isSignupScreen
                                      ? Colors.green
                                      : Colors.white,
                                )
                              ],
                            ))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                        child: Form(
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: isSignupScreen
                                    ? Icon(Icons.account_circle)
                                    : Icon(Icons.email),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.circular(35)),
                              hintText: isSignupScreen ? 'User name' : 'email'),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: isSignupScreen
                                      ? Icon(Icons.email)
                                      : Icon(Icons.lock)),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.circular(35)),
                              hintText: isSignupScreen ? 'email' : 'password'),
                        ),
                        SizedBox(height: 8,),
                        if (isSignupScreen)
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(Icons.lock),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.circular(35)),
                                hintText: 'password'),
                          )
                      ]),
                    ))
                  ]),
                )),
            AnimatedPositioned(
              top: isSignupScreen ? 400 : 380,
              right: 0,
              left: 0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              child: Center(
                child: Container(
                  //TODO: padding은 모두 15, height 90, width 90
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    //TODO: 하얀색, borderRadius는 50
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightGreen, Colors.green],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 1))
                          ]),
                      child: IconButton(
                        //TODO: 화살표 icon, 색은 하얀색
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen()),);
                        }
                      )
                  ),
                ),
              ),
            ),
            Positioned(
                //TODO: top은 핸드폰 세로길이에서 -125, right 0, left 0
                top: MediaQuery.of(context).size.height - 125,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    //TODO: LOGIN 누르면 'or Signin with'
                    //TODO: SIGNUP 누르면 'or Signin with'
                    isSignupScreen
                        ? Text('or Signin with')
                        : Text('or Signin with'),
                    //TODO: SizedBox height 10으로 사이 공간 주기
                    SizedBox(
                      height: 10,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(155, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        //TODO: 배경색은 palette의 googleColor
                        //TODO: 더하기 아이콘 넣고 'Google' 쓰기
                        backgroundColor: Palette.googleColor,
                      ),
                      icon: Icon(
                        Icons.add,
                      ),
                      label: Text('Google'),
                    )
                  ],
                ))
          ],
        ));
  }
}
