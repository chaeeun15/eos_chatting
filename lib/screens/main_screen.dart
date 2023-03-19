import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  //TODO: isSignupScreen 변수 선언
  //LoginSignUpScreen isSignupScreen;
  bool _isClicked1 = false;
  bool _isClicked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: background color로 palette의 backgroundColor 설정,
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            //TODO: top, left, right 모두 0으로 설정
            top: 0, left: 0, right: 0,
            child: Container(
              //TODO: height 300으로 설정
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO: background.png 넣기
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                ),
              ),
                child: Container(
                  //TODO: padding top 90, left 20
                  padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                  child: Column(
                    //TODO: 왼쪽 정렬,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Welcome ",
                          //TODO: letter spacing 1.0, font size 25, color white
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: "to EOS chat",
                            //TODO: letter spacing 1.0, font size 25, color white, bold
                              style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ]
                        )
                      ),
              SizedBox(
                //TODO: height 5.0으로 글 사이 간격 주기
                height: 5.0,
              ),
              Text(
                "Signup to continue",
                //TODO: spacing 1.0, color white
                style: TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
              )],),),)),
          Positioned(
            //TODO: top 150
            top: 150,
            child: Container(
              //TODO: height 280.0, padding 모두 20, width 핸드폰 가로 길이 - 40
              height: 280.0,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              //width 핸드폰 가로 길이 - 40
              //TODO: margin 가로로 양쪽 20
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                //TODO: color white, border radius 15
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    //TODO: color black, 투명도 0.3, blur radius 15, spread radius 5
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    //TODO: mainAxisAlignment.spaceAround
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isClicked1 = true;
                            _isClicked2 = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              //TODO: font size 16, bold
                              //TODO: palette의 textcolor1
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: _isClicked1? FontWeight.bold : FontWeight.normal,
                                color: _isClicked1? Palette.activeColor : Palette.textColor1,
                              ),
                            ),
                            if (_isClicked1)
                              Container(
                                //TODO: margin top만 3, height 2, width 55, color green
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                height: 2,
                                width: 55,
                                color: _isClicked1? Colors.green : Colors.white,
                              )
                          ],),
                      ),
                      GestureDetector(
                          onTap: (){
                            setState(() {
                              _isClicked2 = true;
                              _isClicked1 = false;
                            });
                          },
                        child: Column(
                          children: [
                            Text(
                              "SIGNUP",
                              //TODO: font size 16, bold
                              //TODO: palette의 active color
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: _isClicked2? FontWeight.bold : FontWeight.normal,
                                color: _isClicked2? Palette.activeColor : Palette.textColor1,
                              ),
                            ),
                            Container(
                              //TODO: margin top만 3, height 2, width 55, color green
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              height: 2,
                              width: 55,
                              color: _isClicked2? Colors.green : Colors.white,
                            )],))],),
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              //TODO: prefix icon 원하는 icon 입력, color는 palette의 iconColor
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(Icons.account_circle),
                              ),
                              enabledBorder: OutlineInputBorder(
                                //TODO: borderside 색은 palette의 textColor1
                                //TODO: border radius는 모두 35
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              focusedBorder: OutlineInputBorder(
                                //TODO: borderside 색은 palette의 textColor1
                                //TODO: border radius는 모두 35
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35)
                              ),),)]),))]),))],));
  }
}
