import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: new Text('Eudeka! Flutter Basic'),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Image.asset('images/merahputih.jpg'),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text('Saya Indonesia, Saya Pancasila',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0)),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(right: 5.0),
                              child: new Icon(Icons.access_alarm)),
                          Text('23 September 2019',
                              style: TextStyle(fontSize: 18.0)),
                          Container(
                              padding: EdgeInsets.only(left: 25.0),
                              child: new Icon(Icons.person)),
                          Text('Yopie Hidayat',
                              style: TextStyle(fontSize: 18.0,),
                              textAlign: TextAlign.left,),
                        ]),
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      '"Saya Indonesia, Saya Pancasila" merupakan slogan yang diciptakan untuk memeriahkan Pekan Pancasila 2017, yang diselenggarakan pada 29 Mei—4 Juni 2017. Pekan Pancasila 2017 dirayakan untuk memperingati Hari Kelahiran Pancasila pada 1 Juni 2017, yang merupakan hari libur nasional pertama kalinya sejak disahkan tepat setahun sebelumnya. Slogan ini menjadi ilham bagi tema Pekan Pancasila 2017. Slogan ini mendapatkan tanggapan yang beragam; tanggapan positif menyoroti upaya pemerintah untuk mengingatkan kembali semangat Pancasila yang dinilai memudar di kalangan masyarakat, sedangkan tanggapan negatif menyoroti tata bahasa yang dinilai tidak sesuai, kekhawatiran akan kediktatoran, dan kekhawatiran terhadap serangan terhadap kelompok tertentu. Slogan ini pula dijadikan bahan sindiran oleh beberapa pihak.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                ]),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            title: Text('Settings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text('About'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
