import 'package:flutter/material.dart';

class BotonWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  const BotonWidget({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 85,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Icon(icon, color: color),
      ),
    );
  }
}
