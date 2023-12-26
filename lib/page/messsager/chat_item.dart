import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/neymar.jpg'),
                    radius: 35,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ))
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Neymar JR ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'The video chat ended . 10:30 pm',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Spacer(),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      Icons.verified_rounded,
                      size: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
