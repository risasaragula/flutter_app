import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      //appBar: AppBar(title: const Text("Login Screen")),
      appBar: AppBar(
          centerTitle: true,
          title:  Text(
            "Login Screen",
            style: TextStyle(fontSize: 20, color: Colors.red),
          )),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Image.asset(
              "assets/mad.jpg",
              width: 100,
              height: 100,
            ),
            //image.assets
            const Text("welcome back",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
             SizedBox(height: 6),
             Text("welcome back, enter your credentials here"),
             SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Email Address:",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                 SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                      hintText: "hello@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                 SizedBox(height: 24),
                 Text(
                  "Password:",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ],
            ),
             SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text("Forgot password?")),
              ],
            ),
           SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {},
                child:  Text("Log in",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)))
          ]),
        ),
      ),
    );
  }
}
