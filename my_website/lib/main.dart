import 'package:flutter/material.dart';
import 'package:my_website/pages/about_me_page.dart';
import 'package:my_website/pages/projects_page.dart';
import 'package:my_website/pages/resume_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Personal Website',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'My Home Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => const MyAboutMePage(),
        '/login_page': (context) => const MyResumePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onPressed(int i) {
    if (i == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyAboutMePage()),
      );
    } else if (i == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyResumePage()),
      );
    } else if (i == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyProjectsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => onPressed(0),
              child: const Text("about me"),
            ),
            ElevatedButton(
              onPressed: () => onPressed(1),
              child: const Text("resume"),
            ),
            ElevatedButton(
              onPressed: () => onPressed(2),
              child: const Text("projects"),
            )
          ],
        ),
      ),
    );
  }
}
