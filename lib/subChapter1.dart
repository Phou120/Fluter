import 'package:flutter/material.dart';
import 'package:learn_flutter/SubLesson1/ButtonPage.dart';
import 'package:learn_flutter/SubLesson1/ListViewPage.dart';
import 'package:learn_flutter/SubLesson1/TextFieldPage.dart';
import 'package:learn_flutter/SubLesson1/TextPage.dart';

List itm = [TextPage(), TextFieldPage(), ButtonPage(), ListViewPage()];

List<String> titles = [
  "Text Widgets",
  "TextField Widgets",
  "Button Widgets",
  "ListView Widgets",
];

List<IconData> icons = [
  Icons.text_fields, // TextPage
  Icons.edit, // TextFieldPage
  Icons.touch_app, // ButtonPage
  Icons.list, // ListViewPage
];

class subChapter1 extends StatefulWidget {
  const subChapter1({super.key});

  @override
  State<subChapter1> createState() => _subChapter1State();
}

class _subChapter1State extends State<subChapter1> {
  void selectPage(int index) {
    if (index < itm.length) {
      Navigator.of(context).push(MaterialPageRoute(builder: (c) => itm[index]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ບົດຮຽນ GridView")),
      body: Container(
        margin: EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: itm.length, // Limit item count to 4
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => selectPage(index),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        color: Colors.blueAccent.shade700,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "ບົດທີ 1.${index + 1}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        titles[index], // call to use ttitle
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black54),
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
