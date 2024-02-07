import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';

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
              
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
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
