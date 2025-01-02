import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section HEADER (Avatar and Account Name)
        Padding(
          padding: const EdgeInsets.only(
            top: 6,
            left: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //Avatar Profile
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage("https://i.pravatar.cc/100?u=$name"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        //END of Section Header
        SizedBox(
          height: 6,
        ),
        // Section Image Post
        SizedBox(
          height: 300,
          child: Image.network(
            'https://picsum.photos/600/300?random=$name',
            fit: BoxFit.cover,
          ),
        ),
        // END of Section Image Post

        //Section Like Comment and Share
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline_outlined),
              SizedBox(width: 10),
              Icon(Icons.send_outlined),
            ],
          ),
        ),
        //END of Section Like Comment and Share

        //Section Liked by Users and Others
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'King Salman',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        //END of Section Liked by Users and Others

        //Section Top Comment by User
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                  // color: Colors.black,
                  ),
              children: [
                TextSpan(
                  text: 'anti_pelangi ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'Ayo kita musnahkan kaum ELGIBITI, meresahkan. Semoga kaum ELGIBETE PUNAH!!!!!!...',
                ),
              ],
            ),
          ),
        ),
        //END Section Top Comment by User

        //Section View All Comments
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            'View all comments',
            style: TextStyle(
                // color: Colors.black54,
                ),
          ),
        ),
        //END of Section View All Commments

        //Section Time Post
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            '17 hours ago',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 10,
            ),
          ),
        ),
        //END of Section Time Post
      ],
    );
  }
}
