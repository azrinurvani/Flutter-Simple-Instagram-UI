import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 41,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/100?u=$name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}