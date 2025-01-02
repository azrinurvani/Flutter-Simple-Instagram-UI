import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory(
      {super.key,
      required this.name,
      required this.isMe,
      required this.isLive});
  final String name;
  final bool isMe;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: isLive ? Alignment.bottomCenter : Alignment.bottomRight,
            children: [
              //Avatar Story
              CircleAvatar(
                backgroundColor: isMe ? Colors.white : Colors.pink,
                radius: 41,
                child: CircleAvatar(
                  radius: 39,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/100?u=$name",
                  ),
                ),
              ),

              //Badge Button for add story
              if (isMe)
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

              //Badge Live
              if (isLive)
                Container(
                  height: 16,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: const Border.fromBorderSide(
                      BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                )
            ],
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
