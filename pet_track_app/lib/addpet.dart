import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petpass App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Hayvan ekleme'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: InkWell(
                child: Icon(Icons.camera),
                onTap: (){
                  print("Camera clicked");
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(context),
                  );
                },
              ),
            ),
            //fotograf ekle
            Padding(
            padding: const EdgeInsets.only(top: 120.0),

            ),//verileri al textfield
            TextField( //ad
              onChanged: (value) {
                setState(() {

                });
              },
            ),
            TextField( //tür ,birkaç tür koyup diğerleri bölümünü ekleyebilirsin
              onChanged: (value) {
                setState(() {

                });
              },
            ),
            TextField( //cins ,türün birkaç cinsini yaz
              onChanged: (value) {
                setState(() {

                });
              },
            ),
            TextField( //doğum tarihi
              onChanged: (value) {
                setState(() {

                });
              },
            ),
            TextField( //kilo
              onChanged: (value) {
                setState(() {

                });
              },
            ),
            TextField( //chip numarası
              onChanged: (value) {
                setState(() {

                });
              },
            ),


          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 50,
                width: 240,
                child: ElevatedButton(
                  onPressed: () {
                    // Firebase'ye ekleme işlemi
                  },
                  child: const Text('Ekle'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Chose profile photo",
            style : TextStyle(
                fontSize :20,
                fontWeight :FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.image_outlined,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        "Galery",
                        style : TextStyle(
                            fontSize :20,
                            fontWeight :FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    //takePhoto(ImageSource.gallery);
                  },
                ),

                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        "Camera",
                        style : TextStyle(
                            fontSize :20,
                            fontWeight :FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    //takePhoto(ImageSource.gallery);
                  },
                ),

              ],
            ),
          ),
        ],
      ),

    );
  }
}
