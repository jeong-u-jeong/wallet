import 'package:flutter/material.dart';
import 'package:test2/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              start,
              children: [
                const SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Text('Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),),
                      Text('Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),),
                    ],)
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text('Total balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.
                      withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 5,),
                Text('\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(Color(0xFFF1B33B), 'Transfer', Colors.black),
                    MyButton(Color(0xFF1F2123), 'Request', Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),),
                    Text('View All',
                      style: TextStyle(
                        color: Colors.white.
                          withOpacity(0.8),
                        fontSize: 18,

                      ),),
                  ],
                ),
                const SizedBox(height: 20,),
                CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                ),
                CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  offset: -20,
                ),
                CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                  offset: -40,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Container MyButton(Color bgColor, String text, Color textColor) {
    return Container(
                  decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(45)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: 50,
                    ),
                    child: Text(text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
  }
}
