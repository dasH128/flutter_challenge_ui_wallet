import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;
  const CardWidget({Key? key, required this.balance,
    required this.cardNumber,
  required this.expiryMonth,
  required this.expiryYear,
  required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 280,
        // margin: EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                     Text(
                  'VISA',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                ],
            ),

            const Text(
              'Balance',
              style: TextStyle(
                fontFamily: 'nunito',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              balance.toString(),
              style: const TextStyle(
                fontFamily: 'nunito',
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$expiryMonth / $expiryYear',
                  style: const TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
