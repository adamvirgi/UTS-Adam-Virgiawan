import 'package:flutter/material.dart';
import 'package:utsadam/main.dart';
import 'package:utsadam/profil.dart';

void main() {
  runApp(dashboard());
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        backgroundColor: Color.fromARGB(255, 143, 220, 255),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // ListView Vertikal dengan Card
        Container(
          alignment: Alignment.centerLeft,
          height: 200.0,
          // Atur tinggi sesuai kebutuhan
          child: ListView(
            children: const <Widget>[
              Card(
                child: ListTile(
                  title: Text('Pesan'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Brand'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Favorite'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Setting'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Help'),
                ),
              ), // Tambahkan lebih banyak Card vertikal sesuai kebutuhan
            ],
          ),
        ),

        // ListView Horizontal dengan Card
        Container(
          height: 150.0, // Atur tinggi sesuai kebutuhan
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                child: Container(
                  width: 80.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/gambar.png"),
                ),
              ),
              Card(
                child: Container(
                  width: 90.0,
                  height: 50.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/gambar2.png"),
                ),
              ),
              Card(
                child: Container(
                  width: 80.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/gambar3.jpg"),
                ),
              ),
              Card(
                child: Container(
                  width: 100.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/gambar4.jpg"),
                ),
              ),
              Card(
                child: Container(
                  width: 100.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/gmbar5.jpg"),
                ),
              ),
              // Tambahkan lebih banyak Card horizontal sesuai kebutuhan
            ],
          ),
        ),

        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
          },
          child: Text('Back Page'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profil(),
                )); // Tindakan yang akan diambil ketika tombol "Selanjutnya" ditekan
          },
          child: Text('Profil Page'),
        ),

        // Tombol Kembali
      ],
    );
  }
}
