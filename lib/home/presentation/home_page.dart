import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:supercharged/supercharged.dart';
import 'package:project_uts/home/presentation/widget/custom_app_bar.dart';
import 'package:project_uts/home/presentation/widget/flash_sale.dart';
import 'package:project_uts/home/presentation/widget/menu_button.dart';
import 'package:project_uts/home/presentation/widget/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    Center(child: Text('Favorite Page')),
    Center(child: Text('Cart Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0 ? HomeContent() : _pages[_selectedIndex],
      bottomNavigationBar: BottomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // Header (Search Bar + Lokasi)
          SliverPersistentHeader(
            pinned: true,
            delegate: _SearchBarDelegate(),
          ),

          // Konten Body
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 5),
                // Menu Atas
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MenuButton("assets/category-icon/official-store.png",
                          label: "Official Store"),
                      MenuButton("assets/category-icon/lihat-semua.png",
                          label: "Lihat Semua"),
                      MenuButton("assets/category-icon/rumah-tangga.png",
                          label: "Rumah Tangga"),
                      MenuButton("assets/category-icon/topup.png",
                          label: "TopUp & Tagihan"),
                      MenuButton("assets/category-icon/elektronik.png",
                          label: "Elektronik"),
                      MenuButton("assets/category-icon/fashion.png",
                          label: "Fashion Wanita"),
                      MenuButton("assets/category-icon/keuangan.png",
                          label: "Keuangan"),
                      MenuButton("assets/category-icon/travel.png",
                          label: "Travel & Entertainment"),
                      MenuButton("assets/category-icon/komputer-dan-laptop.png",
                          label: "Komputer & Laptop"),
                    ],
                  ),
                ),
                SizedBox(height: 3),

                // Banner Carousel
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.95,
                    aspectRatio: 50 / 16,
                    autoPlay: true,
                  ),
                  items: [
                    "assets/carousel-slider/banner-1.webp",
                    "assets/carousel-slider/banner-2.webp"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              i,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 15),

                // Menu Bawah
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MenuButton("assets/category-icon2/bangga-lokal.png",
                        label: "Bangga Lokal"),
                    MenuButton("assets/category-icon2/bazar-hari-ini.png",
                        label: "Bazar Hari Ini"),
                    MenuButton("assets/category-icon2/live-shopping.png",
                        label: "Live Shopping"),
                    MenuButton("assets/category-icon2/belanja-harian.png",
                        label: "Belanja Harian"),
                    MenuButton("assets/category-icon2/bayar-ditempat.png",
                        label: "Bayar Ditempat"),
                  ],
                ),
                SizedBox(height: 10),

                // Flash Sale
                FlashSale(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Membuat CustomAppBar tetap di atas saat scroll
class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: CustomAppBar(),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
