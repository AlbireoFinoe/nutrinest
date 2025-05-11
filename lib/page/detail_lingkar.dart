import 'package:flutter/material.dart';
import 'package:nutrinest_app/page/detail_lingkar.dart';
import 'package:nutrinest_app/page/detail_tinggi.dart';
import 'detail_berat.dart';
import 'detail_lingkar.dart';

class DetailLingkarPage extends StatelessWidget {
  const DetailLingkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Grafik Pertumbuhan Lingkar Kepala',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _lastUpdateSection(),
            const SizedBox(height: 16),
            _dataSummaryCard(context),
            const SizedBox(height: 16),
            _statusBox(),
            const SizedBox(height: 24),
            const Text(
              'Grafik Pertumbuhan Lingkar Kepala',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _chartCardPlaceholder(),
            const SizedBox(height: 16),
            _panduanCard(),
          ],
        ),
      ),
    );
  }

  Widget _lastUpdateSection() {
    return const Text(
      'Terakhir Update 12/12/2012',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    );
  }

  Widget _dataSummaryCard(BuildContext context) {
    return Row(
      children: [
        _dataCard(
          context,
          "Berat B.",
          "9.4 kg",
          "assets/icons/icon_berat.png",
          const Color(0xFFDADADA),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailBeratPage()),
            );
          },
        ),
        const SizedBox(width: 8),
        _dataCard(
          context,
          "Tinggi B.",
          "80 Cm",
          "assets/icons/icon_tinggibadan.png",
          const Color(0xFFDADADA),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailTinggiPage()),
            );
          },
        ),
        const SizedBox(width: 8),
        _dataCard(
          context,
          "Lingkar K.",
          "47.5 Cm",
          "assets/icons/icon_lingkark.png",
          const Color(0xFFEAA5B1),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailLingkarPage()),
            );
          },
        ),
      ],
    );
  }

  Widget _dataCard(
    BuildContext context,
    String label,
    String value,
    String iconAsset,
    Color color,
    VoidCallback? onTap,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Image.asset(iconAsset, height: 24, width: 24),
              const SizedBox(height: 4),
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statusBox() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Status : ", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 4),
              Chip(
                label: Text("Normal"),
                backgroundColor: Color(0xFFD5ECE4),
                labelStyle: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            "Berat badan anak normal untuk usianya. Anda dapat memantau berat badan dan tinggi badan anak Anda secara teratur dengan mengacu pada kurva berat badan/tinggi badan.",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 8),
          Text(
            "Untuk pertanyaan lebih lanjut, Anda dapat menjadwalkan kunjungan ke dokter anak Anda atau posyandu terdekat.",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _chartCardPlaceholder() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      alignment: Alignment.center,
      child: const Text(
        "gambar grafik nanti",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _panduanCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF05064), Color(0xFFF45D59)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Panduan Tumbuh Kembang Anak\n19 - 24 Bulan (2 Tahun)",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}
