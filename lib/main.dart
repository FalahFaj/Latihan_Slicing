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
      title: 'E_Wallet Bank Ikan',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HalamanEwallet(),
    );
  }
}

class HalamanEwallet extends StatelessWidget {
  const HalamanEwallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Bank Ikan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Rp 1.000.000", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),),
                    const Text("30.000 coins", style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),

                    Row(
                      children: [
                        const Icon(Icons.receipt_long, size: 14, color: Colors.grey,),
                        const SizedBox(width: 4),
                        Text("Rp 240.000 TERPAKAI DI OCT >", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[700]),)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text("Top Up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.indigo,
                      elevation: 0,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  
                    const SizedBox(height: 8,),
                    ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.arrow_downward), label: const Text("Tarik Tunai"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.indigo,
                      elevation: 0,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 25,),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(color: Colors.tealAccent.shade100, borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.savings, color: Colors.teal, size: 18),
                        SizedBox(width: 5),
                        Text("Aktifkan Tabungan >", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 13)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(color: Colors.deepPurple.shade50, borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance, color: Colors.deepPurple.shade300, size: 18),
                        const SizedBox(width: 5),
                        Text("Buka Deposito >", style: TextStyle(color: Colors.deepPurple.shade400, fontWeight: FontWeight.bold, fontSize: 13)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _MenuIcon(icon: Icons.send, label: "Transfer"),
                      _MenuIcon(icon: Icons.phone_android, label: "Paket Data"),
                      _MenuIcon(icon: Icons.money, label: "Pulsa"),
                      _MenuIcon(icon: Icons.electrical_services, label: "PLN")
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _MenuIcon(icon: Icons.pets, label: "Wallet Pet"),
                      _MenuIcon(icon: Icons.diamond, label: "Gems"),
                      _MenuIcon(icon: Icons.local_activity, label: "Tiket"),
                      _MenuIcon(icon: Icons.grid_view, label: "Lainnya"),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15), child: Divider(),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _KotakAvatar(inisial: "F", nama: "Fikri", warna: Colors.blue.shade100, warnaTeks: Colors.blue),
                        _KotakAvatar(inisial: "A", nama: "Asyraf", warna: Colors.green.shade100, warnaTeks: Colors.green),
                        _KotakAvatar(inisial: "N", nama: "Nasyita", warna: Colors.orange.shade100, warnaTeks: Colors.orange),
                        _KotakAvatar(inisial: "I", nama: "Ilma", warna: Colors.purple.shade100, warnaTeks: Colors.purple),
                        _KotakAvatar(inisial: "👥", nama: "Lainnya", warna: Colors.grey.shade200, warnaTeks: Colors.grey.shade700),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),

            const Text("Spesial cuma buat kamu", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),),
            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.account_balance, color: Colors.white,),
                ),
                title: const Text("Transfer Bank geratis", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),),
                subtitle: const Text("100x/bulan, ke semua bank", style: TextStyle(fontSize: 12),),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)]),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(5)),
                    child: const Text("PROMO", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
                  ),
                  const SizedBox(height: 5,),
                  const Text("Investasi mulai Rp10.000", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.qr_code_scanner, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_balance_wallet)),
            const SizedBox(width: 40,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}

class _MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _MenuIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(15)),
          child: Icon(icon, size: 28, color: Colors.indigo,),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
      ],
    );
  }
}

class _KotakAvatar extends StatelessWidget {
  final String inisial;
  final String nama;
  final Color warna;
  final Color warnaTeks;

  const _KotakAvatar({required this.inisial, required this.nama, required this.warna, required this.warnaTeks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: warna,
            child: Text(inisial, style: TextStyle(color: warnaTeks, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 5),
          Text(nama, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
        ]
      )
    );
  }
}