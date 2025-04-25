import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(bottom: 0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 15,
                              color: Colors.grey,
                            ),
                            Text(
                              "Cari di Tokopedia",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(Icons.mail_outline)),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(Icons.notifications_none)),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(Icons.add_shopping_cart_outlined)),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(Icons.menu))
                ]),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.3), // lebih transparan
          thickness: 0.5, // lebih tipis
          height: 1, // jarak vertikal antar elemen
        )
      ],
    );
  }
}
