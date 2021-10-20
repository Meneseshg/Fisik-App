import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Aceleracion());
}

class Aceleracion extends StatelessWidget {
  const Aceleracion({Key? key}) : super(key: key);
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
    final velocidadInicial = TextEditingController();
    final velocidadFinal = TextEditingController();
    final tiempoFinal = TextEditingController();
    final tiempoInicial = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "formula: (vf-vi)/(tf-ti)",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: velocidadInicial,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Velocidad Final",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: velocidadFinal,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Velocidad inicial",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: tiempoFinal,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Tiempo Final",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: tiempoInicial,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Tiempo inicial",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.number,
              ),
            ),
            InkWell(
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.blue),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 10, top: 10),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Center(
                    child: Text("Calcular",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )),
              onTap: () {
                //Input

                String tis = "";

                String tfs = "";

                String vis = "";

                String vfs = "";

                vis = velocidadInicial.text;
                vfs = velocidadFinal.text;
                tis = tiempoInicial.text;
                tfs = tiempoFinal.text;

                //aceleracion
                double a = 0;
                //Ti
                double ti = double.parse(tis);
                //Tf
                double tf = double.parse(tfs);
                //Vi
                double vi = double.parse(vis);
                //Vf
                double vf = double.parse(vfs);

                a = (vf - vi) / (tf - ti);
                print("la aceleración es $a m/s^2");
              },
            )
          ],
        ),
      ),
    );
  }
}
