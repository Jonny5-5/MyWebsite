import 'package:flutter/widgets.dart';

class MyResumePage extends StatefulWidget {
  static const String route = '/resume';
  const MyResumePage({super.key});

  @override
  MyResumePageState createState() => MyResumePageState();
}

class MyResumePageState extends State<MyResumePage> {
  @override
  Widget build(BuildContext context) {
    return Text("This is my Resume page");
  }
}
