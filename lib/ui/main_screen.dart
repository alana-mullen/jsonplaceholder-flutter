import 'package:flutter/material.dart';
import 'package:jsonplaceholder/ui/posts_summary_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Json Placeholder',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const PostsSummaryScreen(),
    );
  }
}
