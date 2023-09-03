import 'package:djcsi_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
              Image.asset("assets/images/welcome_image.png",fit: BoxFit.cover,),
              SizedBox(height: 20.0,),
              Text("Welcome $name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Column(
                children: [
                  Padding(padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 60.0),),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                      ),
                      onChanged: (value){
                        name=value;
                        setState(() {});
                      },
                      ),
                  TextFormField(
                    obscureText:true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                      ),
                      ),
                  SizedBox(height: 20.0,),
                  InkWell(onTap: () => moveToHome(context), child: AnimatedContainer(duration:Duration(seconds: 1),width: changedButton?50:120,height: 50,
                      alignment: Alignment.center,child:changedButton?Icon(Icons.done,color: Colors.white,):Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      decoration:BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(changedButton?50:8))),
                    ),
                ],
              )
            ],
          ),
        ),
    ),
  );
  }
}
