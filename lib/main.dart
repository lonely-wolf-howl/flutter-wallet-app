import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              UserGreeting(),
              SizedBox(height: 120),
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
              SizedBox(height: 20),
              TransferButton(),
            ],
          ),
        ),
      ),
    );
  }
}

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

class TransferButton extends StatelessWidget {
  const TransferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1B33B),
        borderRadius: BorderRadius.circular(45),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Text(
          'Transfer',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
