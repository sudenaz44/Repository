// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:bootcamp/Login/login_view.dart';
import 'package:bootcamp/Register/register_view.dart';
import 'package:bootcamp/pages/HomePage.dart';
import 'package:bootcamp/pages/SplashScreen.dart';
import 'package:flutter/material.dart';



void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
       
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" :(context) => Splash(), //Splash Screeen
         //"LoginView":(context) => LoginView(),
        // "LoginPage":(context) => LoginPage(),
        // "SignUp":(context) => SignUp(),
        // "HomePage":(context) => HomePage(),
        // "NotePage":(context) => NotePage(),
        // "ProfilePage":(context) => ProfilePages(),
        // "RozetPage":(context) => RozetPage(),
        // "SettingsPage":(context) =>SettingsPage(),
      },
      );


  }
}
