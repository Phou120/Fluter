import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມູນລູກຄ້າ")),
      body: Center(child: Text("ຂໍ້ມູນລູກຄ້າ")),
    );
  }
}
