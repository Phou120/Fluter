import 'package:flutter/material.dart';

class MenuOrderPage extends StatefulWidget {
  const MenuOrderPage({super.key});

  @override
  State<MenuOrderPage> createState() => _MenuOrderPageState();
}

class _MenuOrderPageState extends State<MenuOrderPage> {
  final List<Map<String, dynamic>> menuItems = [
    {'label': 'ກວດສອບສິນຄ້າ', 'icon': Icons.fact_check},
    {'label': 'ສັ່ງຊື້ສິນຄ້າ', 'icon': Icons.shopping_cart},
    {'label': 'ປະຫວັດການສັ່ງຊື້', 'icon': Icons.history},
  ];

  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return MouseRegion(
              onEnter: (_) => setState(() => hoveredIndex = index),
              onExit: (_) => setState(() => hoveredIndex = null),
              child: GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          hoveredIndex == index
                              ? Colors.blue
                              : Colors.grey.shade300,
                      width: hoveredIndex == index ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color:
                        hoveredIndex == index
                            ? Colors.blue.withAlpha(25)
                            : Colors.white,
                    boxShadow:
                        hoveredIndex == index
                            ? [
                              BoxShadow(
                                color: Colors.blue.withAlpha(50),
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                            ]
                            : null,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'],
                        size: 50,
                        color:
                            hoveredIndex == index
                                ? Colors.blue.shade700
                                : Colors.blue,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['label'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              hoveredIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              hoveredIndex == index
                                  ? Colors.blue.shade700
                                  : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
