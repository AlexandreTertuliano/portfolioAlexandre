import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/app_class.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class IntroWeb extends StatefulWidget {
  final AutoScrollController aScrollController;

  const IntroWeb(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroWeb> createState() => _IntroWebState();
}

class _IntroWebState extends State<IntroWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.01,
          top: AppClass().getMqHeight(context) * 0.1),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 50),
                child: Text(
                  Strings.welcomeTxt,
                  style: TextStyle(
                      color: AppColors().neonColor,
                      fontSize: 18,
                      fontFamily: 'sfmono'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  Strings.name,
                  style: GoogleFonts.robotoSlab(
                    color: AppColors().textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 55,
                  ),
                ),
              ),
              SizedBox(
                width: AppClass().getMqWidth(context) -
                    (AppClass().getMqWidth(context) * 0.23),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    Strings.whatIdo,
                    style: GoogleFonts.robotoSlab(
                      color: AppColors().textLight,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontSize: 55,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 50),
                child: Row(
                  children: [
                    Text(
                      "Eu posso ",
                      style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 18,
                        fontFamily: 'sfmono',
                        letterSpacing: 0.0,
                      ),
                    ),
                    AnimatedTextKit(
                      displayFullTextOnTap: true,
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'desenvolver seu primeiro app',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'construir seu website',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'gerenciar seu banco de dados',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'prestar consultoria PJ',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'integrar sua equipe como desenvolvedor mobile',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'integrar sua equipe e trazer resultados',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                        TypewriterAnimatedText(
                          'te fazer um ótimo café =)',
                          textStyle: TextStyle(
                            color: AppColors().neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono',
                            letterSpacing: 0.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: RichText(
                      text: TextSpan(
                          text: Strings.introAbout,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                          text: Strings.currentOrgName,
                          style: GoogleFonts.roboto(
                            color: AppColors().neonColor,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        )
                      ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () {
                    widget.aScrollController.scrollToIndex(1,
                        preferPosition: AutoScrollPosition.begin);
                  },
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.09,
                    width: AppClass().getMqWidth(context) * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: AppColors().neonColor, width: 1.5)),
                    child: Center(
                      child: Text('Confira meu trabalho!',
                          style: TextStyle(
                              color: AppColors().neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
