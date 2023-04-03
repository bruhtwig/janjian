import 'package:flutter/material.dart';

class UndangankuDetail extends StatelessWidget {
  const UndangankuDetail ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF3F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 125,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.3,
                      0.7,
                    ],
                    colors: [
                      Color(0xFF7CBCE4),
                      Color(0xFFFDE9CF),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text("Undangan yang Saya Buat",
                    style: TextStyle(
                        color: Color(0xFF032068),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    textAlign: TextAlign.center),
              ),
            ),
            Container(
              width: 350, height: 550,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Nama Acara",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bukber",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Buka bersama SMA 1 Bojong Gede angkatan 2021....",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15),
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Tanggal Acara",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "28 Maret 2023 08.00 - 09.00 WIB",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Tempat",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Galaxy Mall 3: Starbucks Coffee",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Dibagikan kepada",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFF78BAE5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
