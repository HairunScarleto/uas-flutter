import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopUpScreen(),
    );
  }
}

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top up'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Nikmatin gratis top up di aplikasi Paywin',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Tambah akun bank section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Tambah akun bank',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Hubungkan kartu debitmu dan top up dari app Gojek',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                BankIcon(label: 'BCA OneKlik', isFree: true),
                BankIcon(label: 'Jago Pockets', isFree: true),
                BankIcon(label: 'BRI Direct Debit'),
                BankIcon(label: 'BCA Blu'),
              ],
            ),
            const Divider(height: 32, thickness: 8, color: Colors.grey),

            // Pakai uang tunai section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Pakai uang tunai',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Di minimarket, warung atau agen terdekat',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                RetailerIcon(label: 'Alfamart'),
                RetailerIcon(label: 'Indomaret'),
                RetailerIcon(label: 'Lawson'),
                RetailerIcon(label: 'Mitra Tokopedia'),
                RetailerIcon(label: 'ATM Bersama'),
                RetailerIcon(label: 'Alfamidi'),
                RetailerIcon(label: 'Dan+Dan'),
                RetailerIcon(label: 'Pos Indonesia'),
              ],
            ),
            const Divider(height: 32, thickness: 8, color: Colors.grey),

            // Lewat bank section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Lewat bank',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Dari ATM, m-banking, internet banking, dan lain-lain',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                BankIcon(label: 'BRI'),
                BankIcon(label: 'BCA'),
                BankIcon(label: 'Mandiri'),
                BankIcon(label: 'BNI'),
                BankIcon(label: 'Jago'),
                BankIcon(label: 'PermataBank'),
                BankIcon(label: 'CIMB Niaga'),
                BankIcon(label: 'ATM Bersama'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BankIcon extends StatelessWidget {
  final String label;
  final bool isFree;

  const BankIcon({super.key, required this.label, this.isFree = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 24,
          child: const Icon(Icons.account_balance, color: Colors.blue),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        if (isFree)
          const Text(
            'Gratis',
            style: TextStyle(fontSize: 10, color: Colors.blue),
          ),
      ],
    );
  }
}

class RetailerIcon extends StatelessWidget {
  final String label;

  const RetailerIcon({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 24,
          child: const Icon(Icons.store, color: Colors.blue),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
