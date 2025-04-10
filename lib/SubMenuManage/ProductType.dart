import 'package:flutter/material.dart';

class ProductType extends StatefulWidget {
  const ProductType({super.key});

  @override
  State<ProductType> createState() => _ProductTypeState();
}

class _ProductTypeState extends State<ProductType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມູນປະເພດສິນຄ້າ")),
      body: Center(child: Text("ຂໍ້ມູນປະເພດສິນຄ້າ")),
    );
  }
}
