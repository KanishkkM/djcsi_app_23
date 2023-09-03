import 'package:djcsi_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool changedButton = false;
  moveToHome(BuildContext context) async {
    setState(() {
      changedButton = true;
    });
  }
  _launchURL() async {
    Uri _url = Uri.parse('https://api.quotable.io/quotes/random');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        children:[
          SizedBox(height: 40,),
          InkWell(onTap: () {setState(() {changedButton=true;}); Navigator.pushNamed(context, MyRoutes.loginRoute);
          setState(() {changedButton = false;});},child:Container(child: Icon(Icons.arrow_back,size: 30,),alignment: Alignment.topLeft,height: 40,width: 350,)),
          SizedBox(height: 8,),
          InkWell(onTap:_launchURL,child: Container(child:Text("Manage your \n time well",style: TextStyle(color: Colors.white,fontSize: 20),),width: 360,height: 120,alignment: Alignment.center,decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(20)),),),
          SizedBox(height: 40,),
          Container(child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),alignment: Alignment.centerLeft,height: 40,width: 340,),
          SizedBox(height: 20,),
          Row(
          children: [
            SizedBox(width: 30,),
            InkWell(
              onTap: () {setState(() {changedButton=true;}); Navigator.pushNamed(context, MyRoutes.hometask);
                          setState(() {changedButton = false;});},
              child: Column(
              children: [
                AnimatedContainer(duration: Duration(seconds: 1),
                width: 70,height: 70,alignment: Alignment.center,child: Icon(Icons.person_outlined,color: Colors.white,),
                decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 3,blurRadius: 5,offset: Offset(0, 2),),],),
              ),
                SizedBox(height: 10,),
                Text("Personal",style: TextStyle(fontFamily:'quicksand()'),)
              ]
            )
            ),
          SizedBox(width: 20,),
            InkWell(
                onTap: () {setState(() {changedButton=true;}); Navigator.pushNamed(context, MyRoutes.worktask);
                setState(() {changedButton = false;});},
                child: Column(
                    children: [
                      AnimatedContainer(duration: Duration(seconds: 1),
                        width: 70,height: 70,alignment: Alignment.center,child: Icon(Icons.cases_outlined,color: Colors.white,),
                        decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 3,blurRadius: 5,offset: Offset(0, 2),),],),
                      ),
                      SizedBox(height: 10,),
                      Text("Work",style: TextStyle(fontFamily:'quicksand()'),)
                    ]
                )
            ),
            SizedBox(width: 20,),
            InkWell(
                onTap: () {setState(() {changedButton=true;}); Navigator.pushNamed(context, MyRoutes.shoptask);
                setState(() {changedButton = false;});},
                child: Column(
                    children: [
                      AnimatedContainer(duration: Duration(seconds: 1),
                        width: 70,height: 70,alignment: Alignment.center,child: Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 3,blurRadius: 5,offset: Offset(0, 2),),],),
                      ),
                      SizedBox(height: 10,),
                      Text("Shopping",style: TextStyle(fontFamily:'quicksand()'),)
                    ]
                )
            ),
            SizedBox(width: 20,),
            InkWell(
                onTap: () {setState(() {changedButton=true;}); Navigator.pushNamed(context, MyRoutes.healthtask);
                setState(() {changedButton = false;});},
                child: Column(
                    children: [
                      AnimatedContainer(duration: Duration(seconds: 1),
                        width: 70,height: 70,alignment: Alignment.center,child: Icon(Icons.monitor_heart_outlined,color: Colors.white,),
                        decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 3,blurRadius: 5,offset: Offset(0, 2),),],),
                      ),
                      SizedBox(height: 10,),
                      Text("Health",style: TextStyle(fontFamily:'quicksand()'),)
                    ]
                )
            ),
          ]
        ),
          SizedBox(height: 40,),
          Container(child: Text("Recently added",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),alignment: Alignment.centerLeft,height: 40,width: 340,),

        ]
      ),
    )
    );
  }
}
