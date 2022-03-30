import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDetailEvent extends StatefulWidget {
  //construktor
  String nNamaEvent, nIsiEvent, nGambarEvent;

  PageDetailEvent(
      {required this.nNamaEvent,
      required this.nIsiEvent,
      required this.nGambarEvent});

  @override
  _PageDetailEventState createState() => _PageDetailEventState();
}

class _PageDetailEventState extends State<PageDetailEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.nNamaEvent}'),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: Hero(
                    tag: widget.nNamaEvent,
                    child: Image.asset('gambar/${widget.nGambarEvent}',
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${widget.nNamaEvent}',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${widget.nIsiEvent}',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
