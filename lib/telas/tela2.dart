import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/container_aprendizado.dart';

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
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(13, 0, 0, 5),
                              child: Container(
                                width: 30.w,
                                height: 30.h,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          width: 315.w,
                          height: 100.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              const Text('Nome',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                              ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'ex.CCV',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.yellow),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 3, color: Colors.yellow),
                                    borderRadius: BorderRadius.circular(15),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
