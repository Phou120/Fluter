import 'package:flutter/material.dart';
import 'package:learn_flutter/subChapter1.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("BSCSP6B Mart"),
            accountEmail: Text("02097874954"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("images/logo_s_k.png"),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 1",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (c) => subChapter1(),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 2",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 3",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 4",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 5",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 6",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 7",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),
            child: ListTile(
              title: Text(
                "ບົດທີ 8",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          Card(
            elevation: 20,
            shadowColor: const Color.fromRGBO(67, 138, 243, 1),

            child: ListTile(
              title: Text(
                "ບົດທີ 9",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.book,
                color: const Color.fromARGB(255, 61, 218, 145),
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
