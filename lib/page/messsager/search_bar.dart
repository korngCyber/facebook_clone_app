import 'package:flutter/material.dart';

class Barsearch extends StatelessWidget {
  const Barsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: const Row(
          children: [
            SizedBox(width: 20),
            Icon(
              Icons.search,
              size: 25,
            ),
            SizedBox(width: 10),
            Text(
              'Seach',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
