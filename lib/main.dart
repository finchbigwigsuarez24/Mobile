import 'package:flutter/material.dart';

void main()
{
 runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: 'My Profile App', //title of the app
      debugShowCheckedModeBanner: false, //removes the debug banner
      theme: ThemeData.light(), //sets the theme of the app to light mode
      //home: const ProfilePage(), //The first screen shown when the app opens
    );
  }
}


// Wala pa sugdi!!!!!
class ProfilePage extends StatelessWidget
{
  // ignore: use_super_parameters
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('My Profile'), //title of the app bar
        centerTitle: true, //centers the title in the app bar
      ),
      body: const Center
      (
        child: Text('Welcome to my profile!'), //welcome message in the center of the screen
      ),
    );
  }
}
