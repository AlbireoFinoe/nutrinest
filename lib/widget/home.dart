import 'package:flutter/material.dart';

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
      "user": "Maria Aminoff",
      "title": "Bagaimana cara menangani anak yang mengamuk?",
      "tag": "Pengasuhan",
      "color": "0xFF93C9C1", // Add color for tag
      "description":
          "Menghadapi anak yang sedang mengamuk tidaklah mudah, jika suasana hati Anda sedang buruk, Anda akan menghadapi situasi ini dengan lebih sulit. Cobalah untuk tetap tenang dan cari tahu penyebabnya.",
      "comments": "1249", // Add comments
      "stats": "191", // Add stats
    },
    {
      "user": "Marley Septimus",
      "title":
          "Berat badan anak saya tidak bertambah, apa yang harus saya lakukan?",
      "tag": "Nutrisi",
      "color": "0xFFFFE0AB", // Add color for tag
      "description":
          "Berat badan anak yang lambat bertambah, mungkin merupakan masalah yang serius. Anda perlu mencari tahu penyebabnya dan mencari solusi yang tepat. Berikut adalah beberapa langkah yang dapat Anda lakukan.",
      "comments": "1249", // Add comments
      "stats": "72", // Add stats
    },
  ];

  final List<Map<String, String>> articleData = [
    {
      "title":
          "Apakah Anda merasa bosan menyantap nasi di malam hari saja karena sudah terlalu sering?",
      "tag": "Nutrisi",
      "image": 'assets/imgtikel4.png',
      "date": '04 Nov 2024',
      "views": '72',
      "color": "0xFFA2CAFF",
      "description":
          "Nasi tentu menjadi pilihan utama untuk memenuhi kebutuhan energi harian kita, terutama di Indonesia. akan tetapi, jika Anda merasa bosan menyantap nasi di malam hari saja karena sudah terlalu sering, Anda bisa mencoba alternatif lain yang"
    },
    {
      "title":
          "Apakah Anda merasa bosan menyantap nasi di malam hari saja karena sudah terlalu sering?",
      "tag": "Pengasuhan",
      "image": 'assets/imgtikel5.png',
      "date": '04 Nov 2024',
      "views": '72',
      "color": "0xFF93C9C1",
      "description":
          "Nasi tentu menjadi pilihan utama untuk memenuhi kebutuhan energi harian kita, terutama di Indonesia. akan tetapi, jika Anda merasa bosan menyantap nasi di malam hari saja karena sudah terlalu sering, Anda bisa mencoba alternatif lain yang"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16),
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(16, 20, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xffFBC7D0),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
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
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hoylie Westervelt",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("1 year 6 Months 24 days",
                                  style: TextStyle(color: Colors.grey[700])),
                              Text("Normal",
                                  style: TextStyle(color: Colors.green)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

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
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                      SizedBox(width: 12),
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

              SizedBox(height: 20),

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

              SizedBox(height: 20),

              // Komunitas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Komunitas',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('See All',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(4.0),
                        itemCount: communityData.length,
                        itemBuilder: (context, index) {
                          var community = communityData[index];
                          return _communityCard(
                            community['user']!,
                            community['title']!,
                            community['tag']!,
                            community['color']!,
                            community['description']!,
                            community['comments']!,
                            community['stats']!,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Artikel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Artikel Terbaru',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('See All',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(4.0),
                        itemCount: articleData.length,
                        itemBuilder: (context, index) {
                          var article = articleData[index];
                          return _articleCard(
                            article['title']!,
                            article['tag']!,
                            article['color']!,
                            article['description']!,
                            article['image']!,
                            article['date']!,
                            article['views']!,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Community Card
  Widget _communityCard(String user, String title, String tag, String color,
      String description, String comments, String stats) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        color: Colors.white,
        width: 210,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header (avatar, name, date)
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Parents - 4 Nov 2024',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Color(int.parse(color)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                tag,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              maxLines: 3, // Limit it to 3 lines
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            // Expanded Description
            Expanded(
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Image.asset('assets/komen.png'),
                SizedBox(width: 4),
                Text(comments,
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
                SizedBox(width: 16),
                Image.asset('assets/stats.png'),
                SizedBox(width: 4),
                Text(stats, style: TextStyle(fontSize: 10, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }

// Article Card
  Widget _articleCard(String title, String tag, String color,
      String description, String image, String date, String views) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        color: Colors.white,
        width: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(int.parse(color)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Row(
                    children: [
                      Image.asset('assets/view.png'),
                      const SizedBox(width: 4),
                      Text(
                        views,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuAssetIcon(String assetPath, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Image.asset(
            assetPath,
            width: 28,
            height: 28,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
