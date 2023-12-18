import 'package:flutter/material.dart';

class Firstpag extends StatefulWidget {
  const Firstpag({super.key});
  @override
  State<Firstpag> createState() => _FirstpagState();
}

class _FirstpagState extends State<Firstpag> {
  String foodRadio = "";

  bool foodcheck = false;

  bool gand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rangsimon"),
        backgroundColor: const Color.fromARGB(255, 182, 255, 185),
      ),
      body: Column(
        children: [
          createradiomenu(Color.fromRGBO(79, 195, 247, 1), "คั่วแลน", "คั่วแลน", "150 บาท", Icons.shopping_bag_outlined),
          createradiomenu(Color.fromARGB(255, 79, 124, 247), "ชาไทย", "ชาไทย", "50 บาท", Icons.shopping_bag),
          createradiomenu(Color.fromARGB(255, 247, 79, 149), "กะเพราไก่กรอบ", "กะเพราไก่กรอบ", "40 บาท", Icons.shopping_basket),
          createradiomenu(Color.fromARGB(255, 152, 79, 247), "ข้าวผัดทะเล", "ข้าวผัดทะเล", "45 บาท", Icons.shopping_basket_outlined),
          createradiomenu(Color.fromARGB(255, 247, 79, 79), "ผัดไทย", "ผัดไทย", "55 บาท", Icons.shopping_cart_checkout),

          CheckboxListTile(
            title: Text("เพิ่ม ไข่ดาว +5 บาท"),
            value: foodcheck,
            onChanged: (value) {
              setState(() {
                foodcheck = value!;
              });
              }),
              CheckboxListTile(
            title: Text("เพิ่ม ข้าว +5 บาท"),
            value: gand,
            onChanged: (value) {
              setState(() {
                gand = value!;
              });
            }),
        ],
      ),
    );
  }

  RadioListTile<String> createradiomenu(Color color, String val, String title, String sub, IconData icon) {
    return RadioListTile(
          activeColor:  color,
            value: val,
            title: Text(title),
            subtitle: Text(sub),
            secondary: Icon(icon),
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });
              print(foodRadio);
            });
  }
}
