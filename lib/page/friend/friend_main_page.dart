import 'package:facebook_clone/page/friend/button_see_all.dart';
import 'package:flutter/material.dart';

class Addfriend {
  final String profile;
  final String name;
  final String manul;
  final String manultext;
  final String date;
  Addfriend({
    required this.profile,
    required this.name,
    required this.manul,
    required this.manultext,
    required this.date,
  });
}

var listadd = [
  Addfriend(
    profile: 'assets/images/neymar.jpg',
    name: 'Neymar JR',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
  Addfriend(
    profile: 'assets/images/messi.jpg',
    name: 'Messi',
    manul: 'assets/images/ronaldo.jpg',
    manultext: '1K',
    date: '20y',
  ),
  Addfriend(
    profile: 'assets/images/ronaldo.jpg',
    name: 'Ronaldo',
    manul: 'assets/images/neymar.jpg',
    manultext: '20',
    date: '2day',
  ),
  Addfriend(
    profile: 'assets/images/ramos.jpg',
    name: 'Sergio Ramos',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
];

class Confilmfriend {
  final String profile;
  final String name;
  final String manul;
  final String manultext;
  final String date;
  Confilmfriend({
    required this.profile,
    required this.name,
    required this.manul,
    required this.manultext,
    required this.date,
  });
}

var listconfirm = [
  Confilmfriend(
    profile: 'assets/images/neymar.jpg',
    name: 'Sergio Ramos',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
  Confilmfriend(
    profile: 'assets/images/ronaldo.jpg',
    name: 'Ronaldo',
    manul: 'assets/images/neymar.jpg',
    manultext: '20',
    date: '2day',
  ),
  Confilmfriend(
    profile: 'assets/images/ramos.jpg',
    name: 'Sergio Ramos',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
  Confilmfriend(
    profile: 'assets/images/neymar.jpg',
    name: 'Sergio Ramos',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
  Confilmfriend(
    profile: 'assets/images/ronaldo.jpg',
    name: 'Ronaldo',
    manul: 'assets/images/neymar.jpg',
    manultext: '20',
    date: '2day',
  ),
  Confilmfriend(
    profile: 'assets/images/ramos.jpg',
    name: 'Sergio Ramos',
    manul: 'assets/images/neymar.jpg',
    manultext: '100',
    date: '200day',
  ),
];

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

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
              'Friends',
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]),
                      child: const Center(
                          child: Text(
                        'Suggestions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]),
                      child: const Center(
                          child: Text(
                        'Your friends',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300]),
                      child: const Center(
                          child: Text(
                        'Close friend',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Friend requests',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700]),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 100,
                      child: Row(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(listadd[index].profile),
                          radius: 45,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    listadd[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    listadd[index].date,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(listadd[index].manul),
                                    radius: 12,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      "${listadd[index].manultext}mutual friends")
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          'Confirm',
                                          style: TextStyle(
                                            fontSize: 20,
                                            //   fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[300],
                                      foregroundColor: Colors.black,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          'Delete',
                                          style: TextStyle(
                                            fontSize: 20,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              },
              childCount: listadd.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: ButtonSeeAll(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'People you may know',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 100,
                      child: Row(children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(listconfirm[index].profile),
                          radius: 45,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    listconfirm[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    listconfirm[index].date,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(listconfirm[index].manul),
                                    radius: 12,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      "${listconfirm[index].manultext}mutual freind")
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          'Add friends',
                                          style: TextStyle(
                                            fontSize: 18,
                                            //   fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[300],
                                      foregroundColor: Colors.black,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const SizedBox(
                                      width: 100,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          'Delete',
                                          style: TextStyle(
                                            fontSize: 20,
                                            //   fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              },
              childCount: listconfirm.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: ButtonSeeAll(),
          ),
        ],
      ),
    );
  }
}
