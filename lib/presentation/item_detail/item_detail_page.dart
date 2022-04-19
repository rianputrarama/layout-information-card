import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      // body: Center(child: Text("${arguments['image']}")),
      body: Center(child: Image.asset("${arguments['image']}")),
    );
  }
}
