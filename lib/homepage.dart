import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final String name = "kuch bhi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('catalog app'),
      ),
      body: Center(
        child: Container(
          child: Text('first app $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
