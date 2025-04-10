import 'package:flutter/material.dart';
import 'package:learn_flutter/LoginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      } else {
        count = 0;
      }
    });
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ), // Navigate to LoginPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 65, 194),
        leading: IconButton(
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 233, 229, 229),
            size: 22,
          ),
        ),
        title: const Text(
          "ລະບົບສັ່ງຈອງສິນຄ້າ",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 233, 229, 229),
          ),
        ),
        actions: [
          IconButton(
            onPressed: incrementCounter,
            icon: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 233, 229, 229),
              size: 22,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: decrement,
            icon: const Icon(
              Icons.remove,
              color: Color.fromARGB(255, 233, 229, 229),
              size: 22,
            ),
          ),
          IconButton(
            onPressed: logout, // Log Out Function
            icon: const Icon(Icons.logout, color: Colors.red, size: 22),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              count > 0 ? "ສະແດງຕົວເລກ" : "ຕົວເລກເລີມຈາກ 0 ຂຶ້ນໄປ",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              '$count',
              style: const TextStyle(fontSize: 45, color: Colors.red),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 11, 49, 218),
        onPressed: incrementCounter,
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
    );
  }
}
