import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/app_class.dart';

import '../../controller/general_controller.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactWeb extends ConsumerStatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends ConsumerState<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''04.''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 15,
                        fontFamily: 'sfmono'),
                  ),
                  Text(
                    ''' O que vem depois?''',
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 18,
                        fontFamily: 'sfmono'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Entre Em Contato!',
                  style: GoogleFonts.robotoSlab(
                    color: AppColors().textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 55,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    Strings.endTxt,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () {
                    showMessageDialog(context);
                  },
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.09,
                    width: AppClass().getMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: AppColors().neonColor, width: 1.5)),
                    child: Center(
                      child: Text('Diga Olá!',
                          style: TextStyle(
                              color: AppColors().neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    'alexandretertuliano2010@hotmail.com',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    '+55 (35) 9 9908-7067',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  showMessageDialog(context) {
    final nameController = TextEditingController();
    final contactInfoController = TextEditingController();
    final msgController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
              backgroundColor: AppColors().primaryColor,
              titleTextStyle: TextStyle(
                  color: AppColors().neonColor,
                  fontSize: 18,
                  fontFamily: 'sfmono'),
              title: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        flex: 9,
                        child: Text('Me manda um E-mail!'),
                      ),
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close, color: AppColors().textColor))
                    ],
                  ),
                ],
              ),
              content: Consumer(builder: (context, ref, child) {
                bool isLoading = ref.watch(progressProvider);
                return Stack(
                  children: [
                    Container(
                      color: AppColors().primaryColor,
                      width: AppClass().getMqWidth(context) * 0.5,
                      height: AppClass().getMqHeight(context) * 0.7,
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Me deixe saber seu nome (ou apenas me envie de forma anônima)';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Nome*',
                                errorStyle:
                                    TextStyle(color: AppColors().neonColor),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors().neonColor)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextField(
                                controller: contactInfoController,
                                decoration: const InputDecoration(
                                  hintText: 'Assunto',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFormField(
                                controller: msgController,
                                maxLines: 8,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Sério? Parece que você quer me mandar um e-mail vazio :(';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Texto*',
                                  errorStyle:
                                      TextStyle(color: AppColors().neonColor),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors().neonColor)),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap: () async {
                                        if (formKey.currentState!.validate()) {
                                          ref
                                              .read(progressProvider.notifier)
                                              .state = true;
                                          AppClass()
                                              .abrirGmail(
                                                  nameController.text,
                                                  contactInfoController.text,
                                                  msgController.text)
                                              .then((value) {
                                            if (value) {
                                              Navigator.pop(context);
                                              AppClass().showSnackBar(
                                                  'Email aberto com sucesso!',
                                                  context: context);
                                            } else {
                                              Navigator.pop(context);
                                              AppClass().showSnackBar(
                                                  'Falha ao abrir email. Tente novamente mais tarde.',
                                                  context: context);
                                            }
                                            ref
                                                .read(progressProvider.notifier)
                                                .state = false;
                                          }).onError((error, stackTrace) {
                                            Navigator.pop(context);
                                            AppClass().showSnackBar(
                                                'Ops, houve um erro',
                                                context: context);
                                          });
                                        }
                                      },
                                      child: Container(
                                        height:
                                            AppClass().getMqHeight(context) *
                                                0.06,
                                        width: AppClass().getMqWidth(context) *
                                            0.07,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(3.0)),
                                            border: Border.all(
                                                color: AppColors().neonColor,
                                                width: 1.5)),
                                        child: Center(
                                          child: Text('Enviar',
                                              style: TextStyle(
                                                  color: AppColors().neonColor,
                                                  fontSize: 13,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'sfmono')),
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
                    ),
                    Visibility(
                      visible: isLoading,
                      child: Container(
                          width: AppClass().getMqWidth(context) * 0.5,
                          height: AppClass().getMqHeight(context) * 0.7,
                          color: Colors.transparent,
                          child: Center(
                              child: CircularProgressIndicator(
                                  color: AppColors().neonColor))),
                    ),
                  ],
                );
              }),
            ));
  }
}
