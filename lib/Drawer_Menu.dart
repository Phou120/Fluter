import 'package:flutter/material.dart';
import 'package:learn_flutter/LoginPage.dart';
import 'package:learn_flutter/MenuDrawer.dart';
import 'package:learn_flutter/BottomBar.dart';
import 'package:learn_flutter/SubmenuTabBar/ImportProductPage.dart';
import 'package:learn_flutter/SubmenuTabBar/MenuManagePage.dart';
import 'package:learn_flutter/SubmenuTabBar/MenuOrderPage.dart';
import 'package:learn_flutter/SubmenuTabBar/ReportMenu.dart';
import 'package:learn_flutter/SubmenuTabBar/SalePage.dart';
import 'package:learn_flutter/SubmenuTabBar/SearchPage.dart';

class Drawer_Menu extends StatefulWidget {
  const Drawer_Menu({super.key});

  @override
  State<Drawer_Menu> createState() => _Drawer_MenuState();
}

class _Drawer_MenuState extends State<Drawer_Menu> {
  final TextEditingController ipController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController databaseController = TextEditingController();

  final FocusNode ipFocusNode = FocusNode();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode databaseFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Function to Show Settings Dialog
  void _showSettingsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text.rich(
            TextSpan(
              text: "ຈັດການຄ່າ",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.center,
          ),

          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // IP Address TextField
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: ipController,
                    focusNode: ipFocusNode,
                    decoration: InputDecoration(
                      labelText: "IP",
                      border: InputBorder.none,
                    ),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      // Move focus to username when IP is entered
                      FocusScope.of(context).requestFocus(usernameFocusNode);
                    },
                  ),
                ),
                SizedBox(height: 10),

                // Username TextField
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: usernameController,
                    focusNode: usernameFocusNode,
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: InputBorder.none,
                    ),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      // Move focus to password when username is entered
                      FocusScope.of(context).requestFocus(passwordFocusNode);
                    },
                  ),
                ),
                SizedBox(height: 10),

                // Password TextField
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      // Move focus to database when password is entered
                      FocusScope.of(context).requestFocus(databaseFocusNode);
                    },
                  ),
                ),
                SizedBox(height: 10),

                // Database TextField
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    controller: databaseController,
                    focusNode: databaseFocusNode,
                    decoration: InputDecoration(
                      labelText: "Database",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          actions: [
            ElevatedButton(
              onPressed: () {
                // Print values and close popup when OK is clicked
                print("IP: ${ipController.text}");
                print("Username: ${usernameController.text}");
                print("Password: ${passwordController.text}");
                print("Database: ${databaseController.text}");
                Navigator.of(context).pop(); // Close popup
              },
              child: Text("OK"),
            ),
            ElevatedButton(
              onPressed: () {
                // Clear all inputs when Cancel is clicked
                ipController.clear();
                usernameController.clear();
                passwordController.clear();
                databaseController.clear();

                FocusScope.of(context).requestFocus(ipFocusNode);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  Widget poupMenuButton() {
    return PopupMenuButton<String>(
      itemBuilder:
          (context) => [
            PopupMenuItem(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey.shade800,
                  size: 35,
                ),
                title: Text(
                  'ຕັ້ງຄ່າ',
                  style: TextStyle(color: Colors.blue.shade600, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  _showSettingsDialog(); // Open Settings Form
                },
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(
                  Icons.wifi_outlined,
                  color: Colors.grey.shade800,
                  size: 35,
                ),
                title: Text(
                  'ເຊື່ອມຕໍ່ wifi',
                  style: TextStyle(color: Colors.blue.shade600, fontSize: 20),
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(
                  Icons.storage,
                  color: Colors.amber.shade800,
                  size: 35,
                ),
                title: Text(
                  'ເຊື່ອມຖານຂໍ້ມູນ',
                  style: TextStyle(color: Colors.blue.shade600, fontSize: 20),
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ],
    );
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("ອອກຈາກລະບົບ"),
            content: Text("ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການອອກຈາກລະບົບ?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("ຍົກເລີກ", style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to LoginPage
                  Navigator.pop(context); // Close dialog
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (c) => LoginPage(),
                  );
                  Navigator.of(context).push(route);
                },
                child: Text("ຕົກລົງ", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("ບົດຮຽນພັດທະນາແອບດ້ວຍ Flutter"),
          actions: [
            poupMenuButton(),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => _logout(context),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.folder_open, color: Colors.blue, size: 25),
                text: "ຈັດການຂໍ້ມນພື້ນຖານ",
              ),
              Tab(
                icon: Icon(Icons.shopping_basket, color: Colors.blue, size: 25),
                text: "ຂາຍ",
              ),
              Tab(
                icon: Icon(Icons.arrow_back, color: Colors.blue, size: 25),
                text: "ສັ່ງຊື້ສິນຄ້າ",
              ),
              Tab(
                icon: Icon(Icons.arrow_forward, color: Colors.blue, size: 25),
                text: "ນຳເຂົ້າສິນຄ້າ",
              ),
              Tab(
                icon: Icon(Icons.search, color: Colors.blue, size: 25),
                text: "ຄົ້ນຫາ",
              ),
              Tab(
                icon: Icon(Icons.bar_chart, color: Colors.blue, size: 25),
                text: "ລາຍງານ",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MenuManagePage(),
            SalePage(),
            MenuOrderPage(),
            ImportProductPage(),
            SearchPage(),
            ReportMenu(),
          ],
        ),
        drawer: MenuDrawer(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
