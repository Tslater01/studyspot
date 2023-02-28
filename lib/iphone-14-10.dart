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
        // iphone1410XW5 (1:2)
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffe5e5e5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupty7kXY1 (RWGUpgyHWUaqFfuSLiTy7K)
              padding:
                  EdgeInsets.fromLTRB(29 * fem, 24 * fem, 30 * fem, 73 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // studyspt2Yz (3:2)
                    width: double.infinity,
                    height: 25 * fem,
                    child: Text(
                      'study sp   t',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Lexend Deca',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.25 * ffem / fem,
                        color: Color(0xff224957),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 25 * fem,
                    height: 21 * fem,
                    child: Image.network(
                      'https://function12.io/api/prod-us-east-2-first-cluster/projects/Qh43L2whaycFUj4XedGshs/files/image/d57b2ce17e9a5ced783352a4734a4b090238917c',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // unnamed1AzH (1:8)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 30 * fem, 0 * fem, 88 * fem),
                    width: 331 * fem,
                    height: 117 * fem,
                    child: Image.asset(
                      'assets/page-1/images/unnamed-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroup4p8dePf (RWGSoafkXHb33CqiMh4p8d)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 26 * fem, 10 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // six737264baa3d240a0b771272ad8b (1:18)
                          width: 70 * fem,
                          height: 70 * fem,
                          child: Image.asset(
                            'assets/page-1/images/six737264ba-a3d2-40a0-b771-272ad8b4ddbe-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 59 * fem,
                        ),
                        Container(
                          // img01031o3b (1:9)
                          width: 70 * fem,
                          height: 70 * fem,
                          child: Image.asset(
                            'assets/page-1/images/img0103-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 59 * fem,
                        ),
                        Container(
                          // img01061UQd (1:11)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          width: 43 * fem,
                          height: 53 * fem,
                          child: Image.asset(
                            'assets/page-1/images/img0106-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouptqjdLxd (RWGT6VMF8SUcV1jSm9TqJd)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 23 * fem, 53 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupsEHK (1:13)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 70 * fem, 0 * fem),
                          child: Text(
                            'Groups',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff224957),
                            ),
                          ),
                        ),
                        Container(
                          // classlistszV (1:16)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 65 * fem, 0 * fem),
                          child: Text(
                            'Class List',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff224957),
                            ),
                          ),
                        ),
                        Text(
                          // map9SD (1:17)
                          'Map',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff224957),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup5hgretm (RWGTL9d9fhNZnikxAP5HgR)
                    margin: EdgeInsets.fromLTRB(
                        52 * fem, 0 * fem, 69 * fem, 0 * fem),
                    width: double.infinity,
                    height: 103 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // autogroupynnhJiR (RWGTW4WJSJaoPrFH28YnNH)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 78 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // img01051cUD (1:10)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: 70 * fem,
                                height: 70 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/img0105-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // profileVnu (1:15)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff224957),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupqghtn1K (RWGThDrNTo2GuAuzj3QGHT)
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // img01071WT7 (1:12)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 57 * fem,
                                height: 64 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/img0107-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // selectbuildingzdB (1:14)
                                constraints: BoxConstraints(
                                  maxWidth: 62 * fem,
                                ),
                                child: Text(
                                  'Select\nBuilding',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff224957),
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
              // autogroupkenhfUR (RWGU58PY6UpowkXJX9KENh)
              width: 522 * fem,
              height: 792 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // image1KhP (1:7)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 390 * fem,
                        height: 850 * fem,
                        child: Image.asset(
                          'assets/page-1/images/image-1.png',
                          fit: BoxFit.cover,
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
    );
  }
}
