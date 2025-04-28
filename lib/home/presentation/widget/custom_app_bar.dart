import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10), //jarak kolom pencarian keatas
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Row(
                    children: [
                      Icon(Icons.search, size: 20, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        "Cari di Tokopedia",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.mail_outline, size: 24),
              SizedBox(width: 10),
              Icon(Icons.notifications_none, size: 24),
              SizedBox(width: 10),
              Icon(Icons.add_shopping_cart_outlined, size: 24),
              SizedBox(width: 10),
              Icon(Icons.menu, size: 24),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined, size: 18, color: Colors.black54),
              SizedBox(width: 5),
              Text(
                "Dikirim ke ",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              Text(
                "Sidoarjo",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded,
                  size: 18, color: Colors.black54),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.3),
          thickness: 0.5,
          height: 1,
        ),
      ],
    );
  }
}
