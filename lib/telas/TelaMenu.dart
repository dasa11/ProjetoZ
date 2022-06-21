import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/telas/TelaContato.dart';
import 'package:teste1/widgets/CardAprendizado.dart';
import 'package:teste1/widgets/CardApoio.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  CollectionReference learn = FirebaseFirestore.instance.collection('learning');
  CollectionReference support =
      FirebaseFirestore.instance.collection('support');

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
                    height: 16.vh,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                          child: SizedBox(
                            width: 240,
                            height: 30.h,
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Boas-vindas, Ramon",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  child: Image.asset('images/coisalinda.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 15),
                    child: Text(
                      "Como podemos te ajudar?",
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 20),
                    child: SizedBox(
                      width: 120,
                      child: Text("Aprendizado",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('learning')
                            .snapshots(),
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            default:
                              List<DocumentSnapshot> data = snapshot.data!.docs;
                              return SizedBox(
                                height: 120,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: data.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return CardAprendizado(
                                        color: Color(int.parse(
                                            data[index].get('color'))),
                                        title: data[index].get('title'),
                                        problem: data[index].get('problem'),
                                        option1: data[index].get('option1'),
                                        option2: data[index].get('option2'),
                                        option3: data[index].get('option3'),
                                        explanation1:
                                            data[index].get('explanation1'),
                                        explanation2:
                                            data[index].get('explanation2'),
                                        explanation3:
                                            data[index].get('explanation3'),
                                      );
                                    }),
                              );
                          }
                        },
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 20),
                    child: SizedBox(
                      width: 120,
                      child: Text("Apoio",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('support')
                            .snapshots(),
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            default:
                              List<DocumentSnapshot> data = snapshot.data!.docs;
                              return SizedBox(
                                height: 120,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: data.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return CardApoio(
                                          title: data[index].get('title'),
                                          description:
                                              data[index].get('description'),
                                          author: data[index].get('author'),
                                          videolink:
                                              data[index].get('videoLink'),
                                          summary: data[index].get('summary'),
                                          color: Color(int.parse(
                                              data[index].get('color'))));
                                    }),
                              );
                          }
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: SizedBox(
                      width: 100.vw,
                      child: const Text("Precisa de Ajuda?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: SizedBox(
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
                                    fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: SizedBox(
                              width: 220.w,
                              child: const Text(
                                  'Seus números de emergência aparecerão aqui após cadastrados.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TelaContato()));
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff3D8BFF),
                              ),
                              child: const Text("Cadastrar novo numero",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600)))
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
