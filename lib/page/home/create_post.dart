import 'package:flutter/material.dart';

class CreatPost extends StatelessWidget {
  const CreatPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: ,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("What's on your mind?"),
                Spacer(),
                Icon(
                  Icons.photo_library_sharp,
                  size: 30,
                  color: Colors.green,
                )
              ],
            ),
             const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Icon(
                        Icons.people_alt_rounded,
                        color: Colors.red[700],
                        size: 30,
                      ),
                      Text(
                        "Group",
                        style: TextStyle(
                            color: Colors.red[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),

                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.video_call_rounded,
                        color: Colors.green[700],
                        size: 30,
                      ),
                      Text(
                        "Room",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.video_chat_sharp,
                        color: Colors.purple[700],
                        size: 30,
                      ),
                      Text(
                        "Live",
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CreatRoom extends StatelessWidget {
  CreatRoom({super.key});
  final List<String> _profile = [
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _profile.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 125,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.video_camera_front,
                      size: 30,
                      color: Colors.amber,
                    ),
                    Text(
                      "Creat\n Room",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(_profile[index]),
                  ),
                  Positioned(
                    bottom: 0,
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
