import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://webtvasia.id/images/news/2018/08/Ayunda_Faza_Maudya_atau_akrab_disapa_Maudy_Ayunda.jpg'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ])),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Maudy Ayunda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text("40 Videos",
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "240K Subscriber",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ayunda Faza Maudya ( Lahir di Jakarta, 19 Desember 1994 umur 26 tahun) adalah aktris dan penyanyi Indonesia. Ia memulai kariernya dalam film Untuk Rena produksi Miles Films pada tahun 2006. Kemudian ia membintangi beberapa film seperi Perahu Kertas (2012), Refrain (2013), dan Habibie & Ainun 3 (2019). Untuk karier musik, Maudy merilis album pertamanya pada tahun 2011, Panggil Aku. . . dengan singel hitsnya berjudul 'Tiba Tiba Cinta Datang'. Sejak saat itu Maudy telah merils tiga album: Panggil Aku. . . (2011), Moments (2015), dan Oxygen (2018). Ia juga kerap mengisi jalur suara dalam film-film yang ia bintangi.",
                            style: TextStyle(color: Colors.grey, height: 1.4),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Born",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(height: 20),
                          Text(
                              'Lahir di Jakarta, 19 Desember 1994 umur 26 tahun',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 20),
                          Text(
                            "Nationality",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(height: 20),
                          Text('Indonesia',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 20),
                          Text(
                            "Videos",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(
                                    image:
                                        'https://www.fajarpendidikan.co.id/wp-content/uploads/2020/05/mauu-696x696.jpg'),
                                makeVideo(
                                    image:
                                        'https://www.fajarpendidikan.co.id/wp-content/uploads/2020/05/mauu-696x696.jpg'),
                                makeVideo(
                                    image:
                                        'https://www.fajarpendidikan.co.id/wp-content/uploads/2020/05/mauu-696x696.jpg'),
                                makeVideo(
                                    image:
                                        'https://www.fajarpendidikan.co.id/wp-content/uploads/2020/05/mauu-696x696.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow
                  ),
                  child: Align(child: Text("Follow", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
        aspectRatio: 1.5 / 1,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3)
                ],
              ),
            ),
            child: Align(
              child: Icon(Icons.play_arrow, color: Colors.white, size: 45,),
            ),
          ),
        ));
  }
}
