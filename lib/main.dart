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
      home: const ProfilePage(), //The first screen shown when the app opens
    );
  }
}

class ProfilePage extends StatelessWidget
{
  // ignore: use_super_parameters
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar(title: Text('My Profile')), //the top bar of the app with the title 'My Profile'

      body: SingleChildScrollView //allows the content to be scrollable if it exceeds the screen height
      (
        padding: EdgeInsets.all(24),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            SizedBox(height: 8),
            CircleAvatar
            (
              radius: 100,
              backgroundImage: NetworkImage('https://scontent.fceb1-2.fna.fbcdn.net/v/t39.30808-6/454263809_506873101750850_5347845284382279208_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=JSx3swejA6wQ7kNvwG9rPX2&_nc_oc=AdnJyNSAWLbAptTgGBS2Mu2P2nMM6S9EtZUCKWjYpv-DLYZkKg9TLn-d_PqyeZ7znfw&_nc_zt=23&_nc_ht=scontent.fceb1-2.fna&_nc_gid=xeXv7dv12n3cayXZlSGFJQ&oh=00_AfuajujFsZGltNae42EyQRfdGuuYDpFvVNlpBary7QVO6A&oe=699894D0'),
            ),
            SizedBox(height: 16),
            Text('Finch Bigwig S. Suarez', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Text('Student Developer', style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            SizedBox(height: 16),
            Divider(),
            Card
            (
              child: ListTile
              (
                leading: Icon(Icons.email),
                title: Text('finchbigwig.suarez.24@usjr.edu.ph'),
                subtitle: Text('Email'),
              ),
            ),
            Card
            (
              child: ListTile
              (
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('0943 331 1192'),
                subtitle: Text('Number'),                
              ),
            ),
            Card
            (
              child: ListTile
              (
                leading: Icon(Icons.cake),
                title: Text('October 1, 2006'),
                subtitle: Text('Birthday'),
              ),
            ),
            Card
            (
              child: ListTile
              (
                leading: Icon(Icons.home),
                title: Text('Laray, San Roque, Talisay City, Cebu'),
                subtitle: Text('Address'),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
