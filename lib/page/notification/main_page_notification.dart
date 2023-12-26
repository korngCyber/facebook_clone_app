import 'package:flutter/material.dart';

class Notyitem {
  final String profile;
  final String function;
  final String text;
  final String time;
  Notyitem({
    required this.profile,
    required this.function,
    required this.text,
    required this.time,
  });
}

var listnoty = [
  Notyitem(
    profile: 'assets/images/ronaldo.jpg',
    function: 'assets/icons/menu.png',
    text: 'ronal do is streaming',
    time: 'Now',
  ),
  Notyitem(
    profile: 'assets/images/messi.jpg',
    function: 'assets/icons/haha.png',
    text: 'ronal do is streaming',
    time: 'Now',
  ),
  Notyitem(
    profile: 'assets/images/neymar.jpg',
    function: 'assets/images/haha.png',
    text: 'ronaldo is streaming',
    time: 'Now',
  ),
  Notyitem(
    profile: 'assets/images/ramos.jpg',
    function: 'assets/images/haha.png',
    text: 'hi.......',
    time: 'Now',
  ),
];

class MainNotification extends StatelessWidget {
  const MainNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
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
                  Icons.settings,
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
                child: const Icon(
                  Icons.search_sharp,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10)
            ],
            centerTitle: false,
            expandedHeight: 50,

            // flexibleSpace: FlexibleSpaceBar(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'New',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(listnoty[index].profile),
                              radius: 45,
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  listnoty[index].function,
                                  width: 35,
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    listnoty[index].text,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Text(
                                listnoty[index].time,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: listnoty.length),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Ealier',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(listnoty[index].profile),
                              radius: 45,
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  listnoty[index].function,
                                  width: 35,
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    listnoty[index].text,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Text(
                                listnoty[index].time,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: listnoty.length),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Yesterday',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
           SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(listnoty[index].profile),
                              radius: 45,
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  listnoty[index].function,
                                  width: 35,
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    listnoty[index].text,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Text(
                                listnoty[index].time,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: listnoty.length),
          ),
        ],
      ),
    );
  }
}
