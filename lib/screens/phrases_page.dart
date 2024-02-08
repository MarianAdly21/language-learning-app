import 'package:flutter/material.dart';
import 'package:learning_app/components/number_item.dart';
import 'package:learning_app/components/phrases_item.dart';
import 'package:learning_app/models/item.dart';
import 'package:learning_app/screens/home_page.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide',
        enName: 'dont forget to subscribe'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa kazoku o aishiteimasu',
        enName: 'i love my family'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going '),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'yes im coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
              color: Color(0xff7c3fa1), item: phrasesList[index]);
        },
      ),
    );
  }
}
