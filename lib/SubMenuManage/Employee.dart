import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ຈັດການຂໍ້ມູນພະນັກງານ")),
      body: Center(child: Text("ຂໍ້ມູນພະນັກງານ")),
    );
  }
}
