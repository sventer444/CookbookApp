import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cookbook_app/routes/routes.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:cookbook_app/constants/constants.dart';

void main() async {
  var themePalette = Constants()
      .colorPalette
      .entries
      .firstWhere((element) => element.key == ThemeMode.light)
      .value;
  var mainHeader = themePalette.entries
      .firstWhere((element) => element.key == "mainheader")
      .value;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  try {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    print("Signed in with temporary account.");
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unkown error.");
    }
  }

  final user = FirebaseAuth.instance.currentUser;
  print(user);

  runApp(GetMaterialApp(
      initialRoute: '/appscaffold',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: mainHeader),
      getPages: AppPages.routes));
}
