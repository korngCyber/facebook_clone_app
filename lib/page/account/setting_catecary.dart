import 'package:flutter/material.dart';

class SettingCartecaries extends StatelessWidget {
  final String icon;
  final String text;
  const SettingCartecaries({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 40,
            ),
            const SizedBox(width: 15),
            Text(
              text,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}
