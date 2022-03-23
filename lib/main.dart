import 'package:flutter/material.dart';
import 'package:unjday1/ui_screen/page_register.dart';
import 'package:unjday1/ui_screen/page_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: const PageSplashScreen(),
      //hilangkan debug
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st --> stateless
//stateless --> statis
//statefull --> dinamis

class PageHomeUtama extends StatefulWidget {
  const PageHomeUtama({Key? key}) : super(key: key);

  @override
  _PageHomeUtamaState createState() => _PageHomeUtamaState();
}

class _PageHomeUtamaState extends State<PageHomeUtama> {
  //text controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("UNJ Apps"),
        leadingWidth: 0,
        centerTitle: false,
        // leading: new Container(),
      ),
      //appBar : Properti widget
      //AppBar : Widget
      //child : bisa menampung 1 widget
      //children : bisa menampung banyak widget (row, column, stack, listview)

      body: Center(
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
                'Selamat Datang di UNJ App',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: etUsername,
                decoration: InputDecoration(hintText: 'Input Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: etPassword,
                obscureText: true, //ini biar teks nya bulat2
                decoration: InputDecoration(hintText: 'Input Password'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  //get data
                  String nName = etUsername.text;
                  String nPassword = etPassword.text;

                  //cek login
                  //username == rizki dan pass : 123123
                  //bisa login
                  if ((nName == "rizki") && (nPassword == "123123")) {
                    //maka berhasil login
                    print('Berhasil Login');
                  } else {
                    print('Username atau password salah');
                  }
                },
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
                  //navigation : Navigator
                  //Pop : balikan (back) : dari class B ke class A
                  //push : dari class A ke class B
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageRegister()));
                },
                child: Text(
                  'Anda belum punya akun? Silahkan Register',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
