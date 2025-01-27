import 'package:flutter/material.dart';

class Ayaka extends StatelessWidget {
  const Ayaka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun Saya'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/profile_placeholder.png'),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MUHAMMAD IRVAN SAUQI',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '0831••••9570',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildMenuItem(
                          Icons.account_balance_wallet, 'Saldo', 'Rp122.062'),
                      _buildMenuItem(Icons.flag, 'Paywin Goals', 'Buat Impian'),
                      _buildMenuItem(Icons.family_restroom, 'Rek. Keluarga',
                          'Aktivasi Yuk!'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildMenuItem(Icons.attach_money, 'Paywin Cicil', ''),
                      _buildMenuItem(Icons.savings, 'eMAS', 'Mulai Inves Yuk'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSummaryItem(
                          Icons.arrow_downward, 'Uang Masuk', 'Rp477.000'),
                      _buildSummaryItem(
                          Icons.arrow_upward, 'Uang Keluar', 'Rp526.092'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            ListTile(
              leading: const Icon(Icons.receipt_long, color: Colors.orange),
              title: const Text('My Bills'),
              trailing:
                  const Text('5 Tagihan', style: TextStyle(color: Colors.blue)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.code, color: Colors.orange),
              title: const Text('Isi Kode Promo'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.task_alt, color: Colors.orange),
              title: const Text('Promo Quest'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard,
                  color: Colors
                      .blue), // Ganti Icons.rewards dengan Icons.card_giftcard
              title: const Text('Check-in di A+ Rewards'),
              subtitle: const Text('Dapatkan uang ekstra sekarang!'),
              onTap: () {},
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.blue),
              title: const Text('Pengaturan Profil'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.security, color: Colors.blue),
              title: const Text('Pengaturan Keamanan'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.blue),
              title: const Text('Pengaturan Notifikasi'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.link, color: Colors.blue),
              title: const Text('Akun Terhubung'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.verified_user, color: Colors.blue),
              title: const Text('Verifikasi'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment, color: Colors.blue),
              title: const Text('SmartPay'),
              onTap: () {},
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            ListTile(
              leading: const Icon(Icons.help, color: Colors.blue),
              title: const Text('Pusat Bantuan'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rule, color: Colors.blue),
              title: const Text('Syarat & Ketentuan'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: Colors.blue),
              title: const Text('Privacy Notice'),
              onTap: () {},
            ),
            Divider(thickness: 1, color: Colors.grey[300]),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: Text('Keluar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blueAccent),
        const SizedBox(height: 8),
        Text(title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildSummaryItem(IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon,
            size: 32,
            color: icon == Icons.arrow_downward ? Colors.green : Colors.red),
        const SizedBox(height: 8),
        Text(title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ayaka(),
  ));
}
