import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CAR WASH UFYA',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _minimumPadding = 5.0;
  final namactrl = TextEditingController();
  final alamatctrl = TextEditingController();
  final nohpctrl = TextEditingController();
  final carctrl = TextEditingController();

  String nama = " ";
  String alamat = " ";
  String nohp = " ";
  String car = " ";

  @override
  void dispose() {
    namactrl.dispose();
    alamatctrl.dispose();
    nohpctrl.dispose();
    carctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 1),
        color: Color.fromARGB(234, 13, 20, 39),
        child: ListView(
          children: <Widget>[
            Positioned(
              child: Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  '-CAR WASH UFYA- ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Color.fromARGB(220, 240, 225, 151),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
                controller: namactrl,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // icon: Icon(
                    //   Icons.boy,
                    //   color: Color.fromARGB(255, 253, 0, 0),
                    // ),
                    labelText: "Nama: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Nama Lengkap Anda'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
                controller: alamatctrl,
                decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.place,
                    //   color: Colors.white24,
                    // ),
                    border: OutlineInputBorder(),
                    labelText: "Alamat: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Alamat Lengkap'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
                controller: nohpctrl,
                decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.phone,
                    //   color: Colors.white24,
                    // ),
                    border: OutlineInputBorder(),
                    labelText: "No Hp: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Nomor WA Anda'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  controller: carctrl,
                  decoration: const InputDecoration(
                    // icon: Icon(
                    //   Icons.car_rental,
                    //   color: Colors.white24,
                    // ),
                    labelText: "Merek Mobil / Nomor Plat: ",
                    labelStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Masukkan Merek dan Plat Mobil Anda',
                    border: OutlineInputBorder(),
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = namactrl.text;
                  alamat = alamatctrl.text;
                  nohp = nohpctrl.text;
                  car = carctrl.text;
                });
              },
              child: const Text("DAFTAR", textScaleFactor: 1.5),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 159, 158, 156)),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '--Terima Kasih Telah Mendaftar--',
                    style: const TextStyle(
                        color: Color.fromARGB(220, 240, 225, 151),
                        fontSize: 18,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    'Nama : $nama',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Alamat : $alamat',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'No Hp : $nohp',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Merek/Plat Mobil : $car',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 159, 158, 156),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  // gambar(),
                  icontempat(),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('Adya Faradillah ~ 1915016055',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 5,
                            color: Color.fromARGB(255, 215, 240, 240))),
                    color: Colors.black45,
                  ),
                ]),
          ],
        ),
      ),
    );
  }

  Widget icontempat() {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      //padding: EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
          Widget>[
        Icon(Icons.place, color: Colors.amber),
        Text('Jl. Kestela 9 ',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
        Icon(Icons.timer, color: Colors.amber),
        Text('08.00 - 17.00',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
        Icon(Icons.payment, color: Colors.amber),
        Text('Rp. 50.000',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w100)),
      ]),
    );
  }
}
