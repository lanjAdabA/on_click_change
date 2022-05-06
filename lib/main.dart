import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const TestingWidget(),
    );
  }
}
class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);
  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}
class _TestingWidgetState extends State<TestingWidget> {
  String displayText = 'before click';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("on_Click"),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Text(displayText),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = 'after click';
                });
              },
              child: const Text("click here"))
        ],
      ),
    );
  }
}
