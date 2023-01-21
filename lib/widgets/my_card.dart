import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final moneyFormat =
        NumberFormat.simpleCurrency(locale: 'pt_BR', decimalDigits: 2);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 10),
          const Text('Saldo', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 10),
          Text(
            moneyFormat.format(balance),
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardNumber.toString(),
                  style: const TextStyle(color: Colors.white)),
              Text('$expiryMonth/$expiryYear',
                  style: const TextStyle(color: Colors.white)),
            ],
          )
        ]),
      ),
    );
  }
}
