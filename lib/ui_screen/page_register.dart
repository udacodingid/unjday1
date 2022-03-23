import 'package:flutter/material.dart';
import 'package:unjday1/main.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("UNJ Apps",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: false,
        // leading: new Container(),
      ),
      //appBar : Properti widget
      //AppBar : Widget
      //child : bisa menampung 1 widget
      //children : bisa menampung banyak widget (row, column, stack, listview)

      //column :  gak ada scroll
      //list : bisa pakai scroll
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              //main axis
              //cross axis
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'gambar/logo_unj.png',
                    fit: BoxFit.fill,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Register Account',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input Fullname'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input Username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true, //ini biar teks nya bulat2
                    decoration: InputDecoration(hintText: 'Input Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input No Hp'),
                    keyboardType: TextInputType.phone,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input Alamat'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    color: Colors.yellowAccent,
                    textColor: Colors.black,
                  ),
                ),

                //widget yang bisa di klik :
                //button --> material button, flatbutton, iconbutton,

                //selain dari button mau kita klik
                //kita harus bungkus dg inkwell atau gesture detector
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      //pindah ke page register
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      => PageHomeUtama()
                      ));
                    },
                    child: Text(
                      'Anda sudah punya akun? Silahkan login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
