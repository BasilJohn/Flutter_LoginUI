import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color.fromARGB(248, 248, 248, 248);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login'),
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
  onButtonPressed() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email Address", textAlign: TextAlign.center),
                )),
            const Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: TextField(
                decoration:
                    InputDecoration(filled: true, fillColor: primaryColor),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password", textAlign: TextAlign.center),
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration:
                    InputDecoration(filled: true, fillColor: primaryColor),
              ),
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
