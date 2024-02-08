import 'package:flutter/material.dart';
import 'package:learning_app/components/number_item.dart';
import 'package:learning_app/models/item.dart';
import 'package:learning_app/screens/home_page.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemModel> colorList = const [
    ItemModel(
        sound: 'sounds/color/black.wav',
        image: 'assets/images/color/color_black.png',
        jpName: 'Kuro',
        enName: 'Black'),
    ItemModel(
        sound: 'sounds/color/brown.wav',
        image: 'assets/images/color/color_brown.png',
        jpName: 'Tsuyogari',
        enName: 'Brown'),
    ItemModel(
        sound: 'sounds/color/dusty yellow.wav',
        image: 'assets/images/color/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty yellow'),
    ItemModel(
        sound: 'sounds/color/gray.wav',
        image: 'assets/images/color/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray'),
    ItemModel(
        sound: 'sounds/color/green.wav',
        image: 'assets/images/color/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
    ItemModel(
        sound: 'sounds/color/red.wav',
        image: 'assets/images/color/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    ItemModel(
        sound: 'sounds/color/white.wav',
        image: 'assets/images/color/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Color',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return NumberItem(color: Color(0xff7c3fa1), number: colorList[index]);
        },
      ),
    );
  }
}
