import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MyHomepage(),
        ));
  }
}

class MyHomepage extends StatelessWidget {
  MyHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double mediaquery_height = MediaQuery.of(context).size.height * 0.2;
    final double mediaquery_width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 119, 89, 192),
            width: 7,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: mediaquery_height * 6,
                  width: mediaquery_width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: mediaquery_height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shoes",
                            style: TextStyle(fontSize: mediaquery_width * 0.07),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/hendra.jpg'),
                            // child: Image.asset(),
                          )
                        ],
                      ),
                      SizedBox(
                        height: mediaquery_height * 0.1,
                      ),
                      listsepatu(
                          mediaquery_height: mediaquery_height,
                          mediaquery_width: mediaquery_width,
                          Color: Color.fromARGB(255, 209,198,231),
                          nama: "Nike SB Zoom Blazer Mid Premium",
                          harga: "€8,795",
                          gambar: "https://pngfolio.com/images/all_img/copy/1635222179shoes-png-hd-image.png",
                          ),
                      listsepatu(
                          mediaquery_height: mediaquery_height,
                          mediaquery_width: mediaquery_width,
                          Color: Color.fromARGB(255, 210,249,241),
                          nama: "Nike Air Zoom Pegasus Men's Rood Running Shoes",
                          harga: "€9,995",
                          gambar: "https://pngfolio.com/images/all_img/copy/1667978058Adidas%20Shoes%20PNG%20HD.png",
                          ),
                      listsepatu(
                          mediaquery_height: mediaquery_height,
                          mediaquery_width: mediaquery_width,
                          Color: Color.fromARGB(255,251,233,233),
                          nama: "Nike Zoomx Vaporlify Men's Rood Racing Shoes",
                          harga: "€19,695",
                          gambar: "https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png",
                          ),
                      listsepatu(
                          mediaquery_height: mediaquery_height,
                          mediaquery_width: mediaquery_width,
                          Color: Color.fromARGB(255, 233,233,233),
                          nama: "Nike Air Force 1 S50 Older Kids Shoes",
                          harga: "€6,295",
                          gambar: "https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png",
                          ),
                      listsepatu(
                          mediaquery_height: mediaquery_height,
                          mediaquery_width: mediaquery_width,
                          Color: Color.fromARGB(255, 252,242,178),
                          nama: "Nike Walfie One Men's Shoes",
                          harga: "€8,295",
                          gambar: "https://pngfolio.com/images/all_img/copy/1667977992Adidas%20Shoes%20PNG%20Clipart.png",
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class listsepatu extends StatelessWidget {
  const listsepatu({
    super.key,
    required this.mediaquery_height,
    required this.mediaquery_width,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.Color,

  });

  final double mediaquery_height;
  final double mediaquery_width;
  final String harga;
  final String nama;
  final String gambar;
  final Color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaquery_height * 1,
      child: Expanded(
        child: Stack(
          children: [
            Container(
              height: mediaquery_height * 0.8,
              width: mediaquery_width,
              decoration: BoxDecoration(
                  color: Color,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                height: mediaquery_height * 0.6,
                width: mediaquery_width * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$nama",
                      style: TextStyle(fontSize: mediaquery_width * 0.046),
                    ),
                    Text("$harga")
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Align(
                  child: Image.network(
                    "$gambar",
                    height: mediaquery_height * 0.7,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

