import 'package:flutter/material.dart';

class UnitPage extends StatefulWidget {
  const UnitPage({super.key});

  @override
  State<UnitPage> createState() => _UnitPageState();
}

class _UnitPageState extends State<UnitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມນຫົວໜວ່ຍ")),
      body: Center(child: Text("ຂໍ້ມນຫົວໜວ່ຍ")),
    );
  }
}
