import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/components/item_info.dart';
import 'package:learning_app/models/item.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number, required this.color});
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(number.image!)),
          Expanded(child: ItemInfo(item: number)),
        ],
      ),
    );
  }
}




