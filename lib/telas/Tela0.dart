import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/telas/TelaMenu.dart';
import 'package:teste1/telas/TelaApoio.dart';
import 'package:teste1/telas/TelaAprendizado.dart';


class Tela0 extends StatefulWidget {
  const Tela0({Key ? key}) : super(key: key);


  @override
  _Tela0State createState() => _Tela0State();
}

class _Tela0State extends State<Tela0> {

  int pageIndex = 0;
  PageController _pageController = PageController();
  @override
  void initState()
  {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose()
  {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Resize(
      allowtextScaling: true,
      baseForREM: 10,
      builder: (){
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            backgroundColor: const Color(0xffFFFFFF),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 55,
                width: 7.w,
                decoration: const BoxDecoration(
                  color: Color(0xffFAFAFA),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: BottomNavigationBar(
                    elevation: 0,
                    currentIndex: pageIndex,
                    backgroundColor: const Color(0x00ffffff),
                    selectedItemColor: const Color(0xff3D8BFF),
                    unselectedItemColor: const Color(0xff8C8C8C),
                    showUnselectedLabels: false,
                    showSelectedLabels: true,
                    selectedLabelStyle: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                    type: BottomNavigationBarType.fixed,
                    onTap: (p){
                      _pageController.animateToPage(p, duration: const Duration(milliseconds: 500), curve: Curves.ease);
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(IconData(0xf677, fontFamily: 'MaterialIcons')),
                          label: 'Home',
                          backgroundColor: Colors.black
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.book_solid),
                          label: 'Aprendizado'
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(IconData(0xf06be, fontFamily: 'MaterialIcons')),
                          label: 'Apoio'
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: PageView(
              controller: _pageController,
              onPageChanged: (p){
                setState(() {
                  pageIndex = p;
                });
              },
              children: const [
                TelaMenu(),
                TelaAprendizado(),
                TelaApoio()
              ],
            ),
          ),
        );
      },
    );
  }
}
