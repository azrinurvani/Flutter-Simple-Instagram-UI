import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/widget/bubble_story.dart';
import 'package:flutter_instagram_ui/widget/user_post.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        title: SvgPicture.asset(
          'assets/icons/ic_logo.svg',
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          SvgPicture.asset(
            'assets/icons/ic_add.svg',
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SvgPicture.asset(
              'assets/icons/ic_favorite.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
            ),
            child: SvgPicture.asset(
              'assets/icons/ic_send.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
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
                  isMe: index == 0 ? true : false,
                  isLive: index == 1 ? true : false,
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
