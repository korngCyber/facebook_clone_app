import 'package:flutter/material.dart';

class People {
  final String profile;
  final String name;
  People({
    required this.profile,
    required this.name,
  });
}

var listpeople = [
  People(profile: 'assets/images/neymar.jpg', name: 'Neymar'),
  People(profile: 'assets/images/messi.jpg', name: 'Neymar'),
  People(profile: 'assets/images/neymar.jpg', name: 'Neymar'),
  People(profile: 'assets/images/ronaldo.jpg', name: 'Neymar'),
  People(profile: 'assets/images/ronaldo.jpg', name: 'Neymar'),
  People(profile: 'assets/images/ramos.jpg', name: 'Neymar'),
  People(profile: 'assets/images/ramos.jpg', name: 'Neymar'),
  People(profile: 'assets/images/messi.jpg', name: 'Neymar'),
  People(profile: 'assets/images/neymar.jpg', name: 'Neymar'),
  People(profile: 'assets/images/neymar.jpg', name: 'Neymar'),
  People(profile: 'assets/images/neymar.jpg', name: 'Neymar'),
];

class OnlineBar extends StatelessWidget {
  const OnlineBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listpeople.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(listpeople[index].profile),
                      ),
                      const SizedBox(height: 5),
                      Expanded(child: Text(listpeople[index].name))
                    ],
                  ),
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
