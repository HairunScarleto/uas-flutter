import 'package:flutter/material.dart';

void main() {
  runApp(const TransferPage());
}


class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Bayar/Transfer'),
        actions: [
          IconButton(
            onPressed: () {
              // Tambahkan logika untuk notifikasi
            },
            icon: Stack(
              children: [
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '31',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Transfer ke',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildIconItem(
                context,
                title: 'SeaBank',
                icon: Icons.account_balance_wallet,
              ),
              _buildIconItem(
                context,
                title: 'Bank Lain',
                icon: Icons.account_balance,
              ),
              _buildIconItem(
                context,
                title: 'Virtual Account',
                icon: Icons.credit_card,
              ),
              _buildIconItem(
                context,
                title: 'Top Up E-Wallet',
                icon: Icons.wallet,
              ),
              _buildIconItem(
                context,
                title: 'Top Up & Tagihan',
                icon: Icons.receipt_long,
              ),
              _buildIconItem(
                context,
                title: 'Transfer Grup',
                icon: Icons.group,
                isNew: true,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaksi Terakhir',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Favorit',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildTransactionItem(
            title: 'Gopay Muhammad Samman',
            subtitle: 'GoPay: 081286288479',
            icon: Icons.wallet,
          ),
          _buildTransactionItem(
            title: 'Dnid Sitx Haexxxx',
            subtitle: 'Dana: 088296852325',
            icon: Icons.flag,
          ),
          _buildTransactionItem(
            title: 'Axis 25.000',
            subtitle: 'No. Handphone: 083159070325',
            icon: Icons.phone_android,
          ),
          _buildTransactionItem(
            title: 'Pln Prabayar 50000',
            subtitle: 'Akun PLN: 14247113286',
            icon: Icons.flash_on,
          ),
        ],
      ),
    );
  }

  Widget _buildIconItem(BuildContext context, {required String title, required IconData icon, bool isNew = false}) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue[100],
              child: Icon(icon, color: Colors.blue, size: 30),
            ),
            if (isNew)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Baru',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildTransactionItem({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue[100],
            child: Icon(icon, color: Colors.blue),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.star_border, color: Colors.blue),
        ],
      ),
    );
  }
}
