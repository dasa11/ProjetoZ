import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/container_aprendizado.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        baseForREM: 10,
        builder: () {
          return SafeArea(
              child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xFF3D8BFF),
                    width: 110.vw,
                    height: 10.vh,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            width: 200,
                            height: 30.h,
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Boas-vindas, Nome",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.vw,
                        ),
                        Container(
                          width: 60.w,
                          height: 60,
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text('IMAGE'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: Text(
                      "Como podemos te ajudar?",
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 120,
                          child: Text("Aprendizado",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700)),
                        ),
                        Container(
                          width: 120.w,
                        ),
                        const TextButton(
                            onPressed: null,
                            child: Text("ver mais",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerField(
                              color: const Color(0xffFFE178),
                              text: "Aprendizado"),
                          ContainerField(
                              color: const Color(0xff3DC5FF), text: "Bullyng"),
                          ContainerField(
                              color: const Color(0xff9C3AFD),
                              text: "Aprendizado"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 120,
                          child: Text("Apoio",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700)),
                        ),
                        Container(
                          width: 120.w,
                        ),
                        const TextButton(
                            onPressed: null,
                            child: Text("ver mais",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerField(
                              color: const Color(0xffFFE178),
                              text: "Respiração"),
                          ContainerField(
                              color: const Color(0xffFFBD3D),
                              text: "Meditação Guiada "),
                          ContainerField(
                              color: const Color(0xffFD3A5D),
                              text: "Aprendizado"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Container(
                      width: 100.vw,
                      child: const Text("Precisa de Ajuda?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Container(
                      width: 100.vw,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 220.w,
                            child: const Text('Numeros de Emergencia',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: SizedBox(
                              width: 220.w,
                              child: const Text(
                                  'Seus números de emergência aparecerão aqui após cadastrados.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                          TextButton(
                              onPressed: null,
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff3D8BFF),
                              ),
                              child: const Text("Cadastrar novo numero",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700)))
                        ],
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
