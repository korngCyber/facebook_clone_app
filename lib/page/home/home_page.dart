import 'package:facebook_clone/page/home/card.dart';
import 'package:facebook_clone/page/home/create_post.dart';

import 'package:facebook_clone/page/messsager/main_messager.dart';
import 'package:flutter/material.dart';

class Postitem {
  final String profile;
  String name;
  String date;
  Icon icon;
  String caption;
  String like;
  String comment;
  String share;
  final String postpicture;
  Postitem({
    required this.profile,
    required this.name,
    required this.date,
    this.icon = const Icon(Icons.people_alt_outlined),
    required this.caption,
    required this.like,
    required this.comment,
    required this.share,
    this.postpicture = '',
  });
}

var listpost = [
  Postitem(
    profile: 'assets/images/ramos.jpg',
    name: 'Sergi Ramos',
    date: 'yesterday',
    caption: 'My bad',
    like: '100M',
    comment: '5000M',
    share: '300M',
    postpicture: 'assets/images/pic82.jpg',
  ),
  Postitem(
    icon: const Icon(Icons.public),
    profile: 'assets/images/messi.jpg',
    name: 'Leo Messi',
    date: '2mn ago',
    caption: 'hello welcome back',
    like: '1K',
    comment: '50M',
    share: '2M',
    postpicture: 'assets/images/post.jpg',
  ),
  Postitem(
    icon: const Icon(Icons.abc),
    profile: 'assets/images/neymar.jpg',
    name: 'Neymar JR',
    date: '3d',
    caption: 'You wanna play with me?',
    like: '100K',
    comment: '500k',
    share: '2M',
    postpicture: 'assets/images/manu.jpg',
  ),
  Postitem(
    icon: const Icon(Icons.abc),
    profile: 'assets/images/ronaldo.jpg',
    name: 'Ronaldo',
    date: '3d',
    caption: 'sorry ',
    like: '100K',
    comment: '500k',
    share: '2M',
    postpicture: 'assets/images/pic82.jpg',
  ),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Facebook',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[600]),
            ),
            actions: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: const Icon(
                  Icons.favorite_outline,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 15),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainMessage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.message,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 5)
            ],
            centerTitle: false,
            expandedHeight: 50,
            floating: true,

            // flexibleSpace: FlexibleSpaceBar(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          const SliverToBoxAdapter(
            child: CreatPost(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: CreatRoom(),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 3,
              color: Colors.grey[300],
            ),
          ),
          SliverToBoxAdapter(
            child: StroyCard(),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 3,
              color: Colors.grey[300],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(listpost[index].profile),
                                  radius: 30,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listpost[index].name,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          listpost[index].date,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listpost[index].icon,
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.menu),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.close_outlined),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Text(listpost[index].caption),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          listpost[index].postpicture,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 6, left: 8, right: 8),
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
                                  listpost[index].like,
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
                                  listpost[index].comment,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[850]),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  listpost[index].share,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
                          width: double.infinity,
                          height: 1,
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
              },
              childCount: listpost.length,
            ),
          )
        ],
      ),
    );
  }
}
