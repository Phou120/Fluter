import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({super.key});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມູນອັດຕາແລກປ່ຽນ")),
      body: Center(child: Text("ຂໍ້ມູນອັດຕາແລກປ່ຽນ")),
    );
  }
}
