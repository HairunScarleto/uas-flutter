import 'package:flutter/material.dart';
import 'package:flutter_project_e_wallet/account.dart';
import 'package:flutter_project_e_wallet/activity.dart';
import 'package:flutter_project_e_wallet/kirim.dart';
import 'package:flutter_project_e_wallet/terima.dart';
import 'package:flutter_project_e_wallet/topup.dart';
import 'package:flutter_project_e_wallet/wallet.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Paywin UI',
    home:PaywinHomePage(),
  ));
}

class PaywinHomePage extends StatelessWidget {
  const PaywinHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rp0'),
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
                  InkWell(
                    child:
                        IconAction(icon: Icons.qr_code_scanner, label: "Scan"),
                  ),
                  InkWell(
                    onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TopUpScreen()));},
                    child: IconAction(
                        icon: Icons.account_balance_wallet, label: "Top up"),
                  ),
                  InkWell(
                    onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TransferPage()));},
                    child: IconAction(
                        icon: Icons.account_balance_wallet, label: "Kirim"),
                  ),
                 InkWell(
                    onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Myapkp()));},
                    child: IconAction(
                        icon: Icons.account_balance_wallet, label: "Minta"),
                  ),
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
                  FeatureTile(icon: Icons.local_offer, label: "paywin Deals"),
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
                                text: "Paywin Kaget",
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
        currentIndex: 0,
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
        onTap: (int value) {
          if (value == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Ayaka()));
          } else if (value == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ActivityPage()));
          } else if (value == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const TopUpScreen()));
          } else if (value == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Wallet()));
          }
        },
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
