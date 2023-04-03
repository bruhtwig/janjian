import 'package:flutter/material.dart';
import 'package:janjian/undanganku.dart';
import 'package:janjian/undangan_untukku.dart';
import 'package:janjian/profil_saya.dart';

class UndanganBaru extends StatefulWidget {
  const UndanganBaru({Key? key}) : super(key: key);

  @override
  State<UndanganBaru> createState() => _UndanganBaruState();
}

class _UndanganBaruState extends State<UndanganBaru> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: Text("Buat Undangan Baru",
                    style: TextStyle(
                        color: Color(0xFF032068),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    textAlign: TextAlign.center),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nama Acara",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintText: "Tuliskan judul acaramu",
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Deskripsi",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintText: "Tuliskan deskripsi acaramu",
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Rentang Tanggal Acara",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintText: "Tuliskan tanggal acaramu",
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Tempat",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintText: "Tuliskan lokasi acaramu",
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF78BAE5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Simpan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UndanganBaru()));
        },
        child: const Icon(
          color: Colors.orange,
          Icons.add,
          size: 50,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFF78BAE5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Undanganku()));
                    },
                    child: const Icon(
                      Icons.outbox,
                      size: 35,
                      color: Color(0xFF0E4568),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const UndanganUntukku()));
                    },
                    child: const Icon(
                      Icons.move_to_inbox,
                      size: 35,
                      color: Color(0xFF0E4568),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => Undanganku()));
                    },
                    child: const Icon(
                      Icons.access_time_filled,
                      size: 35,
                      color: Color(0xFF0E4568),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProfilSaya()));
                    },
                    child: const Icon(
                      Icons.person,
                      size: 35,
                      color: Color(0xFF0E4568),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
