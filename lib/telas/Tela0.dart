import 'package:flutter/material.dart';
import 'package:teste1/telas/Tela1.dart';
import 'package:teste1/telas/TelaApoio.dart';


class Tela0 extends StatefulWidget {
  const Tela0({Key ? key}) : super(key: key);



  @override
  _Tela0State createState() => _Tela0State();
}

class _Tela0State extends State<Tela0> {

  PageController _pageController = PageController();
  int _page = 0;
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(30, 29, 29, 1),
        bottomNavigationBar: Theme(

          data: Theme.of(context).copyWith
            (
              canvasColor: Colors.transparent,
              primaryColor: Colors.transparent,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(color: Colors.transparent))
          ),

          child: BottomNavigationBar(
            selectedItemColor: Color(0xff3D8BFF),
              type: BottomNavigationBarType.fixed,
            unselectedItemColor: Color(0x008C8C8C),
            elevation: 0,
            backgroundColor: Color(0xffFFFFFF),
            currentIndex: _page,
            onTap: (p){
              _pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
            items:
            [
              BottomNavigationBarItem(
                  icon: Icon(IconData(0xf677, fontFamily: 'MaterialIcons')),
                  label: 'HOME'
              ),
              BottomNavigationBarItem(
                  icon: Icon(IconData(0xf72c, fontFamily: 'MaterialIcons')),
                  label: 'JOGO'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'PERFIL'
              ),
            ],
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (p){
            setState(() {
              _page = p;
            });
          },
          children: [
            // TERCEIRA PAGINA ###########################################################################################
            Container(
            child: MyApp(),),
            Container(color: Colors.white,
              child: TelaApoio(),),
          ],
        ),

      ),
    );
  }
}
