import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fisik_selector.dart';
import 'main.dart';

void main() {
  runApp(const GradeSelector());
}

class GradeSelector extends StatelessWidget {
  const GradeSelector({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator Fisik App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InkWell(
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.blue),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 20, top: 20),
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: const Center(
                    child: Text("Decimo",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelecProblemFisik()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
