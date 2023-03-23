import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginL1j (117:19)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffe5e5e5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupfwcddFj (3v121SRyrnheNuf5iLFWcD)
              padding: EdgeInsets.fromLTRB(41*fem, 106*fem, 41*fem, 171*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupjzds6QD (3v11scKhBesUc6oQwBjzds)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 7*fem, 112*fem),
                    width: double.infinity,
                    height: 68*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // studysptaqB (117:38)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 293*fem,
                              height: 68*fem,
                              child: Text(
                                'study sp   t',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Lexend Deca',
                                  fontSize: 54*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.25*ffem/fem,
                                  color: Color(0xff224957),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // spot1cG5 (117:39)
                          left: 225*fem,
                          top: 13*fem,
                          child: Align(
                            child: SizedBox(
                              width: 65*fem,
                              height: 54*fem,
                              child: Image.asset(
                                'assets/page-1/images/spot-1-C7P.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // form4tm (117:20)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // loginandfindyourstudyspotPw3 (117:34)
                          'Login and find your Study Spot!',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lexend Deca',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.25*ffem/fem,
                            color: Color(0xff224957),
                          ),
                        ),
                        Container(
                          // autogroupgz4ht77 (3v12GGLcNUD9zPvA3BgZ4h)
                          padding: EdgeInsets.fromLTRB(4*fem, 32*fem, 4*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // usernameN2H (117:31)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: Color(0xff224957),
                                ),
                                child: TextField(
                                  decoration: InputDecoration (
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.fromLTRB(18*fem, 12*fem, 18*fem, 13*fem),
                                    hintText: 'Login',
                                    hintStyle: TextStyle(color:Color(0xffffffff)),
                                  ),
                                  style: SafeGoogleFont (
                                    'Lexend Deca',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.4285714286*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // password7ty (117:28)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: Color(0xff224957),
                                ),
                                child: TextField(
                                  decoration: InputDecoration (
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.fromLTRB(18*fem, 13*fem, 18*fem, 12*fem),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color:Color(0xffffffff)),
                                  ),
                                  style: SafeGoogleFont (
                                    'Lexend Deca',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.4285714286*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // sectionforgotV8q (117:21)
                                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 7*fem, 23*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle18Sh (117:24)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      width: 18*fem,
                                      height: 17*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                        color: Color(0xff224957),
                                      ),
                                    ),
                                    Container(
                                      // remembermen1T (117:23)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                      child: Text(
                                        'Remember me',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff093545),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // forgotpasswordox9 (117:22)
                                      'Forgot password?',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                // loginbtnJ8D (117:25)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 45*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xff20df7f),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x4c000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration (
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: 'login',
                                      hintStyle: TextStyle(color:Color(0xffffffff)),
                                    ),
                                    style: SafeGoogleFont (
                                      'Lexend Deca',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.25*ffem/fem,
                                      color: Color(0xff000000),
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
                ],
              ),
            ),
            Container(
              // vectorsPJ5 (117:35)
              width: 405*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/vector-WM3.png',
                  ),
                ),
              ),
              child: Center(
                // vectorGsf (117:37)
                child: SizedBox(
                  width: 405*fem,
                  height: 99*fem,
                  child: Image.asset(
                    'assets/page-1/images/vector-pzy.png',
                    width: 405*fem,
                    height: 99*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}