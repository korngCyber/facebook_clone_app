import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(1, 1),
          ),
          BoxShadow(
            spreadRadius: 1,
            color: Colors.grey,
            blurRadius: 9,
            offset: Offset(-1, -1),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/messi.jpg'),
              radius: 35,
            ),
            SizedBox(width: 10),
            Text(
              'Leo Messi',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
