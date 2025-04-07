import 'package:flutter/material.dart';
import 'currency_card.dart';

class WalletSection extends StatefulWidget {
  const WalletSection({super.key});

  @override
  State<WalletSection> createState() => _WalletSectionState();
}

class _WalletSectionState extends State<WalletSection> {
  int selectedIndex = -1;

  void onCardTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Wallets',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'View All',
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CurrencyCard(
          name: 'Euro',
          code: 'EUR',
          amount: '6 428',
          icon: Icons.euro_rounded,
          isInverted: selectedIndex == 0,
          onTap: () => onCardTap(0),
          order: 1,
        ),
        CurrencyCard(
          name: 'Bitcoin',
          code: 'BTC',
          amount: '9 785',
          icon: Icons.currency_bitcoin,
          isInverted: selectedIndex == 1,
          onTap: () => onCardTap(1),
          order: 2,
        ),
        CurrencyCard(
          name: 'Dollar',
          code: 'USD',
          amount: '428',
          icon: Icons.monetization_on_rounded,
          isInverted: selectedIndex == 2,
          onTap: () => onCardTap(2),
          order: 3,
        ),
      ],
    );
  }
}
