import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import '../widgets/CardAprendizadoExtended.dart';

class TelaAprendizado extends StatefulWidget {
  const TelaAprendizado({Key? key}) : super(key: key);

  @override
  State<TelaAprendizado> createState() => _TelaAprendizadoState();
}

class _TelaAprendizadoState extends State<TelaAprendizado> {
  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        baseForREM: 10,
        builder: () {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffFFFFFF),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xff3D8BFF),
                      width: 100.vw,
                      height: 10.vh,
                      child: const Center(
                        child: Text('Aprendizados',
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: SizedBox(
                        width: 320,
                        child: Text(
                          'Nessa atividade você vai se deparar com uma situação e vai poder escolher uma das opções do que você faria ou gostaria de fazer. Assim que selecionar a opção, vai aparecer uma consequência da sua escolha.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Color(0xff242424),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
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
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return CardAprenziadoExtended(
                                      color: Color(
                                          int.parse(data[index].get('color'))),
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
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
