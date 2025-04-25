import 'package:flutter/material.dart';
import 'package:project_uts/home/presentation/widget/custom_app_bar.dart';
import 'package:supercharged/supercharged.dart';
import 'package:project_uts/home/presentation/widget/menu_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: "F1FFF8".toColor(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  SizedBox(height: 70),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 14,
                                      ),
                                      Text(
                                        "Dikirim ke ",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Sidoarjo",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 40)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                      Positioned(
                        top: 110,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              MenuButton(
                                  "assets/category-icon/official-store.png",
                                  label: "Official Store"),
                              MenuButton("assets/category-icon/lihat-semua.png",
                                  label: "Lihat Semua"),
                              MenuButton(
                                  "assets/category-icon/rumah-tangga.png",
                                  label: "Rumah Tangga"),
                              MenuButton(
                                "assets/category-icon/topup.png",
                                label: "Top Up & Tagihan",
                              ),
                              MenuButton(
                                "assets/category-icon/elektronik.png",
                                label: "Elektronik",
                              ),
                              MenuButton(
                                "assets/category-icon/fashion.png",
                                label: "Fashion-Pria",
                              ),
                              MenuButton(
                                  "assets/category-icon/rumah-tangga.png",
                                  label: "Rumah Tangga"),
                              MenuButton("assets/category-icon/keuangan.png",
                                  label: "Keuangan"),
                              MenuButton("assets/category-icon/travel.png",
                                  label: "Travel & Entertainment"),
                              MenuButton(
                                  "assets/category-icon/komputer-dan-laptop.png",
                                  label: "Komputer & Laptop"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.95,
                      aspectRatio: 50 / 16,
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
                              child: Container(
                                  child: Image.asset(
                                i,
                                fit: BoxFit.cover,
                              )),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
