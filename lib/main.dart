import 'package:flutter/material.dart';
import 'widgets/action_button.dart';
import 'widgets/user_greeting.dart';
import 'widgets/balance_display.dart';
import 'widgets/wallet_section.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF181818),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w800,
          ),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 20),
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const UserGreeting(),
              const SizedBox(height: 60),
              const BalanceDisplay(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    text: 'Transfer',
                    backgroundColor: const Color(0xFFF1B33B),
                  ),
                  ActionButton(
                    text: 'Request',
                    backgroundColor: const Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const WalletSection(),
            ],
          ),
        ),
      ),
    );
  }
}
