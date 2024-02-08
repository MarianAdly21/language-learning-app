import 'package:flutter/material.dart';
import 'package:learning_app/components/number_item.dart';
import 'package:learning_app/models/number.dart';
import 'package:learning_app/screens/home_page.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand Father'),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother'),
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/family/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family/family_older_sister.png',
        jpName: 'Ana',
        enName: 'Older Sister'),
    ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older Brother'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister'),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {

        //   },
        // ),
        title: Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberItem(color: Color(0xff528031), number: numbers[index]);
        },
      ),
    );
  }
}
