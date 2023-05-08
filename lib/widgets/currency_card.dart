import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  // 커스텀 : 이름, 통화코드, 통화량, 아이콘

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        padding: EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: isInverted ? _blackColor : Colors.white, fontSize: 32.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(color: isInverted ? _blackColor : Colors.white, fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      code,
                      style: TextStyle(color: isInverted ? _blackColor :Colors.white, fontSize: 20.0),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(-5, 12),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 88.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
