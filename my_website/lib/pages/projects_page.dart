import 'package:flutter/widgets.dart';

class MyProjectsPage extends StatefulWidget {
  static const String route = '/projects';
  const MyProjectsPage({super.key});

  @override
  MyProjectsPageState createState() => MyProjectsPageState();
}

class MyProjectsPageState extends State<MyProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Text("This is my Projects page");
  }
}
