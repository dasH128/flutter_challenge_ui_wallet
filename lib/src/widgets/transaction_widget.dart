import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  const TransactionWidget(
    this.color,
    this.icon,
    this.title,
    this.subTitle, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //   height: 150,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 21,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
