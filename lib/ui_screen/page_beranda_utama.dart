import 'package:flutter/material.dart';
import 'package:unjday1/ui_screen/page_grid_event.dart';
import 'package:unjday1/ui_screen/page_simple_grid.dart';

class PageBerandaUtama extends StatefulWidget {
  //constuctor atau penampng data
  String nPass, nUsername;
  PageBerandaUtama({required this.nPass, required this.nUsername});

  @override
  _PageBerandaUtamaState createState() => _PageBerandaUtamaState();
}

class _PageBerandaUtamaState extends State<PageBerandaUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.yellowAccent,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hello ... ${widget.nUsername}'),
            ),
            SizedBox(height: 10,),
            Center(child: Text('Password Anda :   ${widget.nPass}')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                  => PageSimpleGrid()
                ));
              },
                child: Text('Simple Gridview'),
                color: Colors.yellowAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageGridEvent()
                ));
              },
                child: Text('Galery Event'),
                color: Colors.yellowAccent,
              ),
            )
          ],
        )
      ),
    );
  }
}
