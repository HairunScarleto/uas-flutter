import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActivityPage(),
    );
  }
}

class ActivityPage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        icon: Icons.gamepad,
        title: 'Roblox',
        date: '10 Jan 2025 • 17:53',
        amount: -18000),
    Transaction(
        icon: Icons.gamepad,
        title: 'Roblox',
        date: '10 Jan 2025 • 17:52',
        amount: -18000),
    Transaction(
        icon: Icons.sim_card,
        title: 'Ewa',
        date: '08 Jan 2025 • 18:08',
        amount: -9130000),
    Transaction(
        icon: Icons.sim_card,
        title: 'MyTelkomsel - DANA',
        date: '08 Jan 2025 • 18:06',
        amount: -10000),
    Transaction(
        icon: Icons.sim_card,
        title: 'MyTelkomsel - DANA',
        date: '08 Jan 2025 • 18:05',
        amount: -20000),
    Transaction(
        icon: Icons.send,
        title: 'Kirim ke Irvan Sauqi',
        date: '08 Jan 2025 • 17:31',
        amount: -77000),
    Transaction(
        icon: Icons.public,
        title: 'Internet',
        date: '08 Jan 2025 • 17:28',
        amount: -259400),
    Transaction(
        icon: Icons.add_circle,
        title: 'Isi Saldo',
        date: '08 Jan 2025 • 17:04',
        amount: 300000),
    Transaction(
        icon: Icons.account_balance_wallet,
        title: 'Terima dari MUHAMMAD',
        date: '08 Jan 2025 • 16:42',
        amount: 111000),
  ];

  ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktivitas'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(transaction.icon, color: Colors.blue),
              ),
              title: Text(transaction.title),
              subtitle: Text(transaction.date),
              trailing: Text(
                '${transaction.amount < 0 ? '-' : ''}Rp${transaction.amount.abs()}',
                style: TextStyle(
                  color: transaction.amount < 0 ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Transaction {
  final IconData icon;
  final String title;
  final String date;
  final int amount;

  Transaction({
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
});
}