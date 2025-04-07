import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - 40, 0);
    path.lineTo(size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CurrencyCard extends StatelessWidget {
  final String name;
  final String code;
  final String amount;
  final IconData icon;
  final bool isInverted;
  final VoidCallback onTap;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.onTap,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (order - 1) * -20.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipPath(
          clipper: DiagonalClipper(),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: isInverted ? Colors.white : const Color(0xFF1F2123),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            amount,
                            style: TextStyle(
                              color: isInverted ? Colors.black : Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            code,
                            style: TextStyle(
                              color:
                                  isInverted ? Colors.black54 : Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 2.0,
                    child: Transform.translate(
                      offset: const Offset(-4, 12),
                      child: Icon(
                        icon,
                        color: isInverted ? Colors.black : Colors.white,
                        size: 75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
