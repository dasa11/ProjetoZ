import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resize/resize.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../../widgets/button.dart';
import '../Tela0.dart';

class TelaConteudoApoio extends StatefulWidget {
  final String videourl;
  final String author;
  final String description;
  final String summary;
  final String title;
  final Color color;

  TelaConteudoApoio(
      {required this.videourl,
      required this.author,
      required this.description,
      required this.summary,
      required this.title,
      required this.color});

  @override
  State<TelaConteudoApoio> createState() => _TelaConteudoApoioState(
      videourl: videourl,
      author: author,
      description: description,
      summary: summary,
      title: title,
      color: color);
}

class _TelaConteudoApoioState extends State<TelaConteudoApoio> {
  final String videourl;
  final String author;
  final String description;
  final String summary;
  final String title;
  final Color color;

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    String url;
    if (videourl.isEmpty) {
      url = 'https://www.youtube.com/watch?v=G1IbRujko-A';
    } else {
      url = videourl;
    }
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayerController.convertUrlToId(url)!,
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: false,
        useHybridComposition: false,
        loop: true,
        showVideoAnnotations: false,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  _TelaConteudoApoioState(
      {required this.videourl,
      required this.author,
      required this.description,
      required this.summary,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    if (videourl.isEmpty) {
      return Resize(builder: () {
        return SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xffF8F8F8),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(color.value),
                  width: 100.vw,
                  height: 10.vh,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: button(
                          onClickAction: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const Tela0()))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28.09,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Text(
                    summary,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text(
                    'Descrição',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 35, 0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'por $author',
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
      });
    } else {
      return Resize(builder: () {
        return SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xffF8F8F8),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(color.value),
                  width: 100.vw,
                  height: 10.vh,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: button(
                          onClickAction: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const Tela0()))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 35, 0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'por $author',
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  width: 500,
                  height: 300,
                  child: YoutubePlayerIFrame(
                    controller: _controller,
                    aspectRatio: 16 / 9,
                  ),
                )
              ],
            ),
          ),
        ));
      });
    }
  }
}
