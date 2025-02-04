import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 154, 159),
      body: Column(
        children: [
          buildImageSection(context),
          buildTextSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 210, 61, 83),
        child: const Icon(Icons.favorite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildImageSection(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Image.asset(
        'assets/images/man.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildTextSection() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Stack(
          children: [
            buildTextContent(),
            buildFloatingBox(),
          ],
        ),
      ),
    );
  }

  Widget buildTextContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: '',
              children: [
                TextSpan(
                  text: 'LONDON',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                TextSpan(
                  text:
                      ' — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.\n\n'
                      'Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.\n\n'
                      'Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”\n\n'
                      '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”\n\n'
                      'Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.\n\n'
                      '“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.\n\n'
                      '“If consumers invest in these types of product, they should be prepared to lose all their money.”\n\n'
                      'Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFloatingBox() {
    return Align(
      alignment: const Alignment(0.0, -2),
      child: Container(
        width: 311,
        height: 141,
        decoration: BoxDecoration(
          color: const Color.fromARGB(223, 215, 215, 215),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Sunday, 9 May 2021\n\nCrypto investors should be prepared to lose all their money, BOE governor says\n\nPublished by Ryan Browne',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
