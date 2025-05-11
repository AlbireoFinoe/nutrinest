import 'package:flutter/material.dart';
import '../page/growth_detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color mainColor = const Color(0xFFF83758);
  final Color gradientColor = const Color(0xFFF86780);

  final List<Map<String, String>> communityData = [
    {
      "user": "Maria Amiroff",
      "title": "Bagaimana cara menangani anak yang mengantuk?",
      "tag": "Pengasuhan"
    },
    {
      "user": "Marley Septimus",
      "title":
          "Berat badan anak saya tidak bertambah, apa yang harus saya lakukan?",
      "tag": "Pertumbuhan"
    },
  ];

  final List<Map<String, String>> articleData = [
    {
      "title": "Apakah Anda merasa bosan menyantap nasi di malam hari?",
      "tag": "Nutrisi"
    },
    {
      "title": "Apakah anak merasa bosan menyantap nasi di malam hari?",
      "tag": "Pengasuhan"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header & Baby Card
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [mainColor, gradientColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hai Siti",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Selamat Datang",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white70)),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/notifikasi.png',
                          width: 28,
                          height: 28,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _dataAnak(),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Jadwal Mendatang
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jadwal Mendatang",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: mainColor)),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Lihat Semua',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Posyandu Bulu Lor",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text("Hepatitis 1",
                                style: TextStyle(color: Colors.white)),
                            Text("24 Maret, 10.00 WIB",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/container_posyandu.png',
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Icon Menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _menuAssetIcon("assets/icon_sbhm.png", "SBHM"),
                  _menuAssetIcon("assets/icon_sikecil.png", "Sikecil"),
                  _menuAssetIcon("assets/icon_nutrisi.png", "Nutrisi"),
                  _menuAssetIcon("assets/icon_tips_ibu.png", "Tips Ibu"),
                ],
              ),

              const SizedBox(height: 24),

              // Komunitas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Popular Komunitas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('See all',
                        style: TextStyle(color: Colors.blue, fontSize: 15)),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 140,
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: communityData.length,
                  itemBuilder: (context, index) {
                    final item = communityData[index];
                    return _communityCardHorizontal(
                        item['user']!, item['title']!, item['tag']!);
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Artikel Terbaru
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Artikel Terbaru",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('See all',
                        style: TextStyle(color: Colors.blue, fontSize: 15)),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 120,
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: articleData.length,
                  itemBuilder: (context, index) {
                    final item = articleData[index];
                    return _articleCardHorizontal(
                        item['title']!, item['tag']!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dataAnak() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GrowthDetailPage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xffFBC7D0),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/icon_bayi.png', width: 50),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Hoylie Westervelt",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("1 year 6 Months 24 days",
                    style: TextStyle(color: Colors.black54)),
                Text("Normal", style: TextStyle(color: Colors.green)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _menuAssetIcon(String assetPath, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            assetPath,
            width: 28,
            height: 28,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _communityCardHorizontal(String user, String title, String tag) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: gradientColor.withOpacity(0.2),
                child: Icon(Icons.person, color: mainColor),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(user,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 6),
          Text(tag, style: TextStyle(color: mainColor, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _articleCardHorizontal(String title, String tag) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [mainColor, gradientColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.food_bank, color: Colors.white),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(height: 4),
                Text(tag, style: TextStyle(color: mainColor, fontSize: 12)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
