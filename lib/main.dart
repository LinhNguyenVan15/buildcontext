import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoBuildContext(),
    );
  }
}

class DemoBuildContext extends StatelessWidget {

  const DemoBuildContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo BuildContext"),
      ),
      body: Container(

      ),
    );
  }
}

class OngBa extends StatelessWidget {
  Widget? child;
  OngBa({this.child});//optional paramaters
  // const OngBa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ChaMe extends StatelessWidget {
  Widget? child;
  ChaMe({this.child});//optional paramaters
  // const OngBa({Key? key}) : super(key: key);
// cha mẹ có 2 method là lấy tên con trai và con gái

  String layTenConTrai(){
    return "Hùng";
  }
  String layTenConGai(){
    return "Hoa";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ConTrai extends StatelessWidget {
  // const ConTrai({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   var ChaMe? chaMe=context.findAncestorWidgetOfExactType(ChaMe);
    return Container(
      child: Text(chaMe.layTenConTrai()),
    );
  }
}

class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  State<> createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



//07:25
