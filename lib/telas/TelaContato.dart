import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/InputField.dart';

import '../widgets/button.dart';

class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        builder: () {
          return SafeArea(
              child: Scaffold(
                backgroundColor: const Color(0xffF8F8F8),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          color: const Color(0xff3D8BFF),
                          width: 100.vw,
                          height: 10.vh,
                          child: button(onClickAction: () => print("oi"))),
                      Padding(
                        padding: const EdgeInsets.only(top:30),
                        child: Container(
                          width: 315.w,
                          height: 134.h,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text('Cadastro de Emergência',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                        fontSize: 26,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 290,
                                  height: 65,
                                  child: const Text(
                                    'Aqui você pode armazenar contatos de confiança caso precise falar com alguém. Confiança armazenar, padrão guloseimas e proteinas tornedoras.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                      inputField(texto: 'Nome', hint:'ex.CVV', tipo: TextInputType.text , tam:100),
                      inputField(texto: 'Telefone', hint: 'ex. 11 94217-5439', tipo: TextInputType.number, tam: 100),
                      inputField(texto: 'Mensagem Automática', hint: 'ex. Preciso de ajuda. Me ligue assim que puder', tipo: TextInputType.text, tam: 100),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: SizedBox(
                          width: 150.w,
                          height: 70.h,
                          child: TextButton(onPressed: null,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3D8BFF)) ,
                                shape:  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(color: Color(0xff3D8BFF)))),
                              ),
                              child: const Text('Cadastrar',
                                style: TextStyle(
                                  fontSize: 17.8,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xffFBFBFB),
                                ),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}