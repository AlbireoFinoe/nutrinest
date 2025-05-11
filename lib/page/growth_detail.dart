import 'package:flutter/material.dart';
import 'detail_berat.dart';
import 'detail_tinggi.dart';
import 'detail_lingkar.dart';

class GrowthDetailPage extends StatefulWidget {
  const GrowthDetailPage({Key? key}) : super(key: key);

  @override
  State<GrowthDetailPage> createState() => _GrowthDetailPageState();
}

class _GrowthDetailPageState extends State<GrowthDetailPage> {
  final String childName = "Haylie Westervelt";
  final String growthStatus = "Normal";
  final String age = "1 year 6 Months 24 days";
  final String lastUpdate = "12/12/2012";

  final List<Map<String, dynamic>> vaccineList1 = [
    {"name": "Hepatitis B1", "taken": true},
    {"name": "Polio O", "taken": false},
    {"name": "Polio O", "taken": false},
    {"name": "BCG", "taken": false},
  ];

  final List<Map<String, dynamic>> vaccineList2 = [
    {"name": "Hepatitis B2", "taken": false},
    {"name": "Rotavirus 1", "taken": false},
    {"name": "PCV 1", "taken": false},
    {"name": "Polio 1", "taken": false},
    {"name": "HIB 1", "taken": false},
    {"name": "DTP 1", "taken": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tumbuh Anak'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/icons/icon_anak.png', width: 40),
                const SizedBox(width: 8),
                Text("$childName - ", style: const TextStyle(fontSize: 16)),
                Text(growthStatus, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 4),
            Text(age, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Text("Terakhir Update $lastUpdate", style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _infoCard('Berat B.', '9.4 kg', 'assets/icons/icon_berat.png', () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailBeratPage()));
                }),
                const SizedBox(width: 5),
                _infoCard('Tinggi B.', '80 cm', 'assets/icons/icon_tinggibadan.png', () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailTinggiPage()));
                }),
                const SizedBox(width: 5),
                _infoCard('Lingkar K.', '47.5 cm', 'assets/icons/icon_lingkark.png', () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailLingkarPage()));
                }),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green.shade50,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Status : Normal", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(height: 8),
                  Text("Berat badan anak normal untuk usianya. Anda dapat memantau berat badan dan tinggi badan anak Anda secara teratur dengan mengacu pada kurva berat badan/tinggi badan."),
                  SizedBox(height: 4),
                  Text("Untuk pertanyaan lebih lanjut, Anda dapat menjadwalkan kunjungan ke dokter anak Anda atau posyandu terdekat."),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.pinkAccent, Colors.redAccent],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text(
                      "Panduan Tumbuh Kembang Anak\n19 - 24 Bulan (2 Tahun)",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Vaccine schedule", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text("Current date 06/11/2024"),
            const SizedBox(height: 8),
            const Text("Rekomendasikan untuk vaksin pada 12/12/2024", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...vaccineList1.map((vaccine) => _vaccineRow(vaccine["name"], vaccine["taken"])),
            const Divider(),
            const Text("Recommends to take vaccines on Dec. 12, 2024", style: TextStyle(fontWeight: FontWeight.bold)),
            ...vaccineList2.map((vaccine) => _vaccineRow(vaccine["name"], vaccine["taken"])),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(String title, String value, String assetPath, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Image.asset(assetPath, width: 32, height: 32),
              const SizedBox(height: 4),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(value),
            ],
          ),
        ),
      ),
    );
  }

  Widget _vaccineRow(String name, bool taken) {
    return ListTile(
      title: Text(name),
      trailing: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: taken ? Colors.pinkAccent : Colors.pink.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          taken ? "Diambil" : "Tidak diambil",
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
