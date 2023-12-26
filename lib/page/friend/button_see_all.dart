import 'package:flutter/material.dart';

class ButtonSeeAll extends StatelessWidget {
  const ButtonSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
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
              'See all',
              style: TextStyle(
                fontSize: 20,
                //   fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
