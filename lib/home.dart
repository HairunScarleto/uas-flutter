import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'DANA UI',
    home: DANAHomePage(),
  ));
}

class DANAHomePage extends StatelessWidget {
  const DANAHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rp 89399443.972'),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Icon Actions
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconAction(icon: Icons.qr_code_scanner, label: "Scan"),
                  IconAction(
                      icon: Icons.account_balance_wallet, label: "Top up"),
                  IconAction(icon: Icons.send, label: "Send"),
                  IconAction(icon: Icons.request_page, label: "Request"),
                ],
              ),
            ),
            // Banner
            Container(
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/banner_1.jpg', // Correct path to your image
                  fit: BoxFit.cover, // Adjust image fit
                  height: 150, // Adjust height if needed
                  width: double.infinity,
                ),
              ),
            ),

            // Grid of Features
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: [
                  FeatureTile(icon: Icons.card_giftcard, label: "Daily Prize"),
                  FeatureTile(icon: Icons.star, label: "A+ Rewards"),
                  FeatureTile(icon: Icons.phone_android, label: "Pulsa & Data"),
                  FeatureTile(
                      icon: Icons.shopping_bag, label: "Belanja Mulai 1Rb"),
                  FeatureTile(icon: Icons.local_offer, label: "DANA Deals"),
                  FeatureTile(icon: Icons.games, label: "Mini Games"),
                  FeatureTile(
                      icon: Icons.play_circle_fill, label: "Google Play Zone"),
                  FeatureTile(icon: Icons.more_horiz, label: "View All"),
                ],
              ),
            ),
            const Divider(),
            // Feed Section
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Feed",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text("Find out what your friends are up to!"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(
                                text: "Your Friend ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "just received "),
                              TextSpan(
                                text: "DANA Kaget",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Activity"),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner, size: 30), label: "PAY"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
        ],
      ),
    );
  }
}

// Widget for Icon Actions
class IconAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

// Widget for Feature Tile
class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
