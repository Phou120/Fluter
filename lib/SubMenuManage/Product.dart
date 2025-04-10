import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມູນສິນຄ້າ")),
      body: Center(child: Text("ຂໍ້ມູນສິນຄ້າ")),
    );
  }
}
