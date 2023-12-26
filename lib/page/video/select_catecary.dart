import 'package:flutter/material.dart';

class VideoCatecary extends StatelessWidget {
  const VideoCatecary({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'For you',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            );
          }
          if (index == 1) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Gaming',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            );
          }
          if (index == 2) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Live',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            );
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 80,
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Following',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
