import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/widgets/my_card.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // appBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ]),
          ),
          const SizedBox(height: 25),

          // cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.10,
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: 311.11,
                  cardNumber: 12345678,
                  expiryMonth: 11,
                  expiryYear: 23,
                  color: Colors.green[400],
                ),
                MyCard(
                  balance: 81.15,
                  cardNumber: 12345678,
                  expiryMonth: 08,
                  expiryYear: 25,
                  color: Colors.blue[400],
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),

          const SizedBox(height: 25),

          // 3 buttons -> send + pay + bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // send button
                MyButton(
                  iconImagePath: 'lib/icons/send-money.png',
                  buttonText: 'Enviar',
                ),

                // pay button
                MyButton(
                  iconImagePath: 'lib/icons/credit-card.png',
                  buttonText: 'Pagar',
                ),

                // bills button
                MyButton(
                  iconImagePath: 'lib/icons/bill.png',
                  buttonText: 'Conta',
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
          // column -> stats + transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                // statistics
                MyListTile()
              ],
            ),
          )
        ]),
      ),
    );
  }
}
