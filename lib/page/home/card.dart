import 'package:flutter/material.dart';

class StroyCard extends StatelessWidget {
  StroyCard({super.key});
  final List<String> _profilestory = [
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
  ];
  final List<String> _poststory = [
    'assets/images/ramos.jpg',
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/neymar.jpg',
    'assets/images/ramos.jpg',
    'assets/images/ronaldo.jpg',
    'assets/images/messi.jpg',
    'assets/images/neymar.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _profilestory.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 125,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset('assets/images/messi.jpg',
                                  height: 150, fit: BoxFit.fill),
                            ),
                            Container(
                              width: 125,
                              height: 60,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                'Creat\nStory',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            )
                          ],
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            bottom: 45,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue[600]),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _poststory[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                        child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 3, color: Colors.blue[800]!),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(_profilestory[index]),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
