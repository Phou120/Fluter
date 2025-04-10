import 'package:flutter/material.dart';
import 'package:learn_flutter/SubMenuManage/Customer.dart';
import 'package:learn_flutter/SubMenuManage/Employee.dart';
import 'package:learn_flutter/SubMenuManage/Exchange.dart';
import 'package:learn_flutter/SubMenuManage/Product.dart';
import 'package:learn_flutter/SubMenuManage/ProductType.dart';
import 'package:learn_flutter/SubMenuManage/Support.dart';
import 'package:learn_flutter/SubMenuManage/UnitPage.dart';

class MenuManagePage extends StatefulWidget {
  const MenuManagePage({super.key});

  @override
  State<MenuManagePage> createState() => _MenuManagePageState();
}

List itmpage = [
  UnitPage(),
  ProductType(),
  Product(),
  Support(),
  Employee(),
  Exchange(),
  Customer(),
];

class _MenuManagePageState extends State<MenuManagePage> {
  @override
  void selectManagePage(int index) {
    setState(() {
      MaterialPageRoute route = MaterialPageRoute(
        builder: (c) => itmpage[index],
      );
      Navigator.of(context).push(route);
    });
  }

  final List<Map<String, dynamic>> menuItems = [
    {'label': 'ຫົວໜ່ວຍ', 'icon': Icons.category},
    {'label': 'ປະເພດສິນຄ້າ', 'icon': Icons.inventory_2},
    {'label': 'ຂໍ້ມູນສິນຄ້າ', 'icon': Icons.shopping_bag},
    {'label': 'ຜູ້ລະໝອງ', 'icon': Icons.people},
    {'label': 'ພະນັກງານ', 'icon': Icons.person_pin},
    {'label': 'ອັດຕາແລກປ່ຽນ', 'icon': Icons.currency_exchange},
    {'label': 'ລູກຄ້າ', 'icon': Icons.group},
  ];

  int? hoveredIndex;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
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
                onTap: () {
                  selectManagePage(index);
                },
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
