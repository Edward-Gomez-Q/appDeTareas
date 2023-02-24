import 'package:flutter/material.dart';
class Tareas extends StatefulWidget {
  const Tareas({Key? key}) : super(key: key);
  @override
  State<Tareas> createState() => _TareasState();
}

class _TareasState extends State<Tareas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
