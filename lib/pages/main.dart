import 'package:djcsi_app/pages/health.dart';
import 'package:djcsi_app/pages/home.dart';
import 'package:djcsi_app/pages/shop.dart';
import 'package:djcsi_app/pages/work.dart';
import 'package:djcsi_app/utils/routes.dart';
import 'package:djcsi_app/pages/home_page.dart';
import 'package:djcsi_app/pages/login_page.dart';
import 'package:djcsi_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(DJCSI());
}
class DJCSI extends StatelessWidget {
  const DJCSI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => IntroPage(),
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute: (context)=> LoginPage(),
        MyRoutes.hometask: (context)=> HomeView(),
        MyRoutes.worktask: (context)=> Worktask(),
        MyRoutes.shoptask: (context)=> Shoptask(),
        MyRoutes.healthtask: (context)=> Healthtask(),
      },
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch:Colors.yellow,fontFamily: GoogleFonts.lato().fontFamily),
    );
  }
}

