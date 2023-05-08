/*
import 'package:flutter/material.dart';
import 'package:nomad_toonflix/widgets/Button.dart';
import 'package:nomad_toonflix/widgets/currency_card.dart';

class Player {
  String? name;

  // Player(this.name);
  Player({required this.name});

// ? 가 있으면 no - required.
// ? 가 없으면 required
}

void main() {
  // var nico = Player('Potato');
  var nico = Player(name: 'Potato');
  nico.name; // Potato
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
      print(numbers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Click Count',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                for (var n in numbers)
                  Text(
                    '$n',
                    style: TextStyle(color: Colors.white),
                  ),
                IconButton(
                    onPressed: onClicked,
                    icon: Icon(
                      Icons.add_box_rounded,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // withOpacity:투명도. 1이 max 값
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '\$ 5 194 482',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 48.0,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Biew All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                    offset: Offset(0, -20),
                    child: CurrencyCard(
                      name: 'BitCoin',
                      code: 'BTC',
                      amount: '9 785',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                    )),
                Transform.translate(
                  offset: Offset(0, -40),
                  child: CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
