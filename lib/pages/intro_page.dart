import 'package:flutter/material.dart';
import 'package:djcsi_app/utils/routes.dart';

class IntroPage extends StatefulWidget {
  const IntroPage ({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  bool changedButton = false;

  moveToHome(BuildContext context) async {
    setState(() {
      changedButton = true;
    });
    await Navigator.pushNamed(context, MyRoutes.loginRoute);
    setState(() {
      changedButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    child: Column(
    children: [
      SizedBox(height: 65,),
      Text("FocusList",style: TextStyle(color: Colors.yellow[700],fontWeight: FontWeight.bold,fontSize: 40),),
      Image.asset("assets/images/intro_page.png",fit: BoxFit.cover),
      SizedBox(height: 30,),
      Text("Welcome to Focus List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      SizedBox(height: 10,),
      Text("FocusList will help you to stay ",style: TextStyle(fontSize: 15),),
      Text("organized and perform your",style: TextStyle(fontSize: 15),),
      Text("tasks much faster",style: TextStyle(fontSize: 15),),
      SizedBox(height: 50,),
      InkWell(onTap: () => moveToHome(context), child: AnimatedContainer(duration:Duration(seconds: 1),width: 200,height: 60,
          alignment: Alignment.center,child: Text("Get Started", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          decoration:BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(8))),
      ),
      ],
    ),
    );
  }
}
