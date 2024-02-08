import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';
import 'package:learning_app/screens/family_page.dart';
import 'package:learning_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyPage();
              }));
            },
            text: 'FamilyMumbers',
            color: Color(0xff528031),
          ),
          Category(
            text: 'Colors',
            color: Color(0xff7c3fa1),
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff46a5ca),
          ),
        ],
      ),
    );
  }
}
