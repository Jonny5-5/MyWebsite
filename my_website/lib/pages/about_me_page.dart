import 'package:flutter/widgets.dart';

class MyAboutMePage extends StatefulWidget {
  static const String route = '/about_me';
  const MyAboutMePage({super.key});

  @override
  MyAboutMePageState createState() => MyAboutMePageState();
}

class MyAboutMePageState extends State<MyAboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Text("This is the AboutMe page");
  }
}
