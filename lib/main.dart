import 'package:flutter/material.dart';

main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Store',
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Online Store',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 125.0,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                child: ClipOval(
                    child: Image.asset('assets/images/logo_learn.png')),
                radius: 120.0,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Center(child: Text('Coming Soon')),
          ],
        ),
      );
}
