import 'package:flutter/material.dart';

class BalanceDisplay extends StatelessWidget {
  const BalanceDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
        SizedBox(height: 5),
        Text(
          '\$5 194 482',
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
