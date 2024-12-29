import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_instagram_ui/widget/bubble_story.dart';
import 'package:flutter_instagram_ui/widget/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List users = [
    'Azri',
    'Jokowi',
    'Luhut',
    'Cak Imin',
    'Gibran',
    'Umar',
    'Syaiful',
    'Bakhri',
    'Uun',
    'Faisal'
  ];

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
            ),
            child: Icon(
              Icons.send_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 125,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                );
              },
            ),
          ),
          const Divider(
            height: 1,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserPost(name: users[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
