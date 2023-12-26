import 'package:flutter/material.dart';

class VideoPost extends StatelessWidget {
  const VideoPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo_chpl.jpg'),
                  radius: 28,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Uffa Champoint league',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Row(
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.close_outlined),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '3d agao .',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(Icons.people_alt_outlined)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    const Text('Ths worst story of Barca'),
                    Image.asset(
                      'assets/images/sad.png',
                      width: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/images/pic82.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/like_icon.png',
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/icon_love.png',
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/haha.png',
                      width: 20,
                    ),
                    Text(
                      '100M',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[850]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '500k comments',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[850]),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '2.3M share',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[850]),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: double.infinity,
              height: 1 / 2,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.handshake_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Like',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.messenger_outline_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Comment',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: double.infinity,
              height: 5,
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
