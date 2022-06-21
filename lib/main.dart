import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste1/telas/Subtelas/TelaConteudoApoio.dart';
import 'package:teste1/telas/Tela0.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
    ),
  );
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Saude Mental",
      home: Tela0()
  ),);
}


