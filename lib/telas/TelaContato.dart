import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/InputField.dart';

import '../widgets/button.dart';
import 'Tela0.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: button(onClickAction: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                    builder: (context) => const Tela0()))),
                              ),
                              const  Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                child: Center(
                                  child: Text('Cadastro de Emergência',
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 45, 0, 40),
                        child: SizedBox(
                          width: 315.w,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                SizedBox(
                                  width: 290,
                                  height: 65,
                                  child: Text(
                                    'Aqui você pode armazenar contatos de confiança caso precise falar com alguém. Confiança armazenar, padrão guloseimas e proteinas tornedoras.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                      inputField(texto: 'Nome', hint:'CVV', tipo: TextInputType.text , tam:100),
                      inputField(texto: 'Telefone', hint: '11 94217-5439', tipo: TextInputType.number, tam: 100),
                      inputField(texto: 'Mensagem Automática', hint: 'Preciso de ajuda. Me ligue assim que puder.', tipo: TextInputType.text, tam: 100),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 150.w,
                          height: 60.h,
                          child: TextButton(onPressed: ()=>
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const Tela0())),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff3D8BFF)) ,
                                shape:  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: const BorderSide(color: Color(0xff3D8BFF)))),
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