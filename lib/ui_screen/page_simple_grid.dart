import 'package:flutter/material.dart';

class PageSimpleGrid extends StatelessWidget {
  const PageSimpleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Gridview'),
      ),
      body: GridView.count(crossAxisCount: 3,
        children: List.generate(16, (index) {
          //array index mulai dari 0
          //kita ganti agar index mulai dari 1
          int nIndex = index + 1;
          String nDataIndex = "$nIndex"; // dsebut konversi value dari int ke string

          return Center(
            child: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: Center(child: Text('Data ke : ${nDataIndex}')),
            ),
          );
        }),
      ),
    );
  }
}
