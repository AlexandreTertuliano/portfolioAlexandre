import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resource/app_class.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.03,
          right: AppClass().getMqWidth(context) * 0.03),
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "01.",
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 20,
                        fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sobre mim',
                        style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ]),
              ),
              Container(
                height: 0.5,
                margin: const EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors().textLight,
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text(
                        Strings.aboutPara1,
                        style: GoogleFonts.roboto(
                          color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPara2,
                        style: GoogleFonts.roboto(
                          color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPara3,
                        style: GoogleFonts.roboto(
                          color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.techIntro,
                        style: GoogleFonts.roboto(
                          color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          childAspectRatio: 10,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech1,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech2,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech3,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech4,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech5,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech6,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech7,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech8,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech9,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech10,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech11,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_right),
                                Text(Strings.tech12,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
