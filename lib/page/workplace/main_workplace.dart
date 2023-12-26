import 'package:flutter/material.dart';

class MainWorkplace extends StatelessWidget {
  const MainWorkplace({super.key});

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
              'Market place ',
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
              const SizedBox(
                width: 15,
              ),
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
            pinned: true,
            // flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Text(
                    'Sell',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue[800]),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlueAccent[200]),
                    child: const Center(
                      child: Text(
                        'For you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'Catecaries',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Text(
                    "Today's pick",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              mainAxisExtent: 240,
              crossAxisSpacing: 5,
              // childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(children: [
                  Image.asset(
                    listitem[index].picture,
                    // width: 160,
                  ),
                  const SizedBox(height: 9),
                  Text(
                    listitem[index].caption,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]);
              },
              childCount: listitem.length,
            ),
          ),
        ],
      ),
    );
  }
}

class Sellitem {
  final String picture;
  final String caption;
  Sellitem({
    required this.caption,
    required this.picture,
  });
}

var listitem = [
  Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/sell.webp',
  ),
  Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/computer.png',
  ),
   Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/computer.png',
  ),
  
  Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/sell.webp',
  ),
   Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/computer.png',
  ),
  Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/sell.webp',
  ),
  Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/sell.webp',
  ),
   Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/computer.png',
  ),
   Sellitem(
    caption: '920\$ MACbook Air 2',
    picture: 'assets/images/computer.png',
  ),
];
