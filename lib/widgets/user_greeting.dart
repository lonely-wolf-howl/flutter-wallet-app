import 'package:flutter/material.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hey, Jae Yong',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Welcome back',
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
