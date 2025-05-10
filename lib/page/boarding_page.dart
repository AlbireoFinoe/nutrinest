import 'package:flutter/material.dart';
import 'package:nutrinest_app/page/home_page.dart';
import 'package:nutrinest_app/page/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingPages(),
    );
  }
}

class BoardingPages extends StatefulWidget {
  @override
  _BoardingPagesState createState() => _BoardingPagesState();
}

class _BoardingPagesState extends State<BoardingPages> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 60.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: PageView(
                    controller: _controller,
                    children: [
                      // Halaman 1
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/imgbp1.png',
                              width: 250.0,
                              height: 250.0,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Selamat Datang!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Selamat datang di ChildAi! Aplikasi yang\n dirancang khusus untuk membantu mencegah\n dan mengobati stunting, memastikan setiap\n anak tumbuh sehat dan optimal.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Halaman 2
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/imgbp2.png',
                              width: 250,
                              height: 250,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Memantau Pertumbuhan & Perkembangan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Lacak pertumbuhan anak Anda, dapatkan akses ke rekomendasi nutrisi, dan dapatkan wawasan yang lebih baik tentang kesehatan anak Anda',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Halaman 3
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/imgbp3.png',
                              width: 250,
                              height: 250,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Menciptakan generasi yang sehat',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Bergabunglah dengan komunitas kami untuk menciptakan generasi yang sehat tanpa stunting. Mari kita mulai perjalanan ini bersama-sama!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // SmoothPageIndicator Sticky di bawah
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFFF83758),
                  ),
                ),
              ),
              // Tombol Lanjutkan
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_controller.page! < 2) {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home_page_(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(242, 40),
                    backgroundColor: Color(0xFFF83758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Lanjutkan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
