
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("second screen")),
        body: Container(
          color: Color.fromARGB(255, 216, 25, 41),
        height: double.infinity,
        width: double.infinity,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
         TextButton(onPressed: () {
          print("button clicked");
          Navigator.pop(context, "/first_screen");
         }, child: Text("back",style: TextStyle(fontSize: 32)),)
        ]),
      ),
    );
  }
}