import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/container_circular.dart';

class TelaApoio extends StatefulWidget {
  const TelaApoio({Key? key}) : super(key: key);

  @override
  State<TelaApoio> createState() => _TelaApoioState();
}

class _TelaApoioState extends State<TelaApoio> {
  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        baseForREM: 10,
        builder: () {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Color(0xffFFFFFF),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text('Aprendizados',
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 320,
                      height: 80,
                      child: const Text(
                        'Nessa atividade você vai se deparar com uma situação e vai poder escolher uma das opções do que você faria ou gostaria de fazer. Assim que selecionar a opção, vai aparecer uma consequência da sua escolha.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Color(0xff242424),
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    ContainerCircular(color: const Color(0xffFFE178), text: 'Ansiedade'),
                    ContainerCircular(color: const Color(0xff3DC5FF), text: 'Bullyng'),
                    ContainerCircular(color: const Color(0xff9C3AFD), text: 'Desânimo')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
