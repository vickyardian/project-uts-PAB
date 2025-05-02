import 'package:flutter/material.dart';
import 'package:Tokopedia/home/presentation/widget/countdown_widget.dart';
import 'package:Tokopedia/home/presentation/widget/product_thumbnail.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            //Tittle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Traktiran Pengguna Baru",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Berakhir dalam  ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 204, 46, 35)),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            child: Row(
                              children: [
                                Icon(Icons.timer,
                                    size: 15, color: Colors.white),
                                SizedBox(
                                  width: 5,
                                ),
                                CountdownWidget(),
                              ],
                            ))),
                    Spacer(),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            //Items
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                    height: 230,
                    width: 120,
                  ),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
