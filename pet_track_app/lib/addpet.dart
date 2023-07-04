
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'sign_upcontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';




void main() {
  runApp( AddPetPage());
}


class AddPetPage extends StatelessWidget {
  AddPetPage({Key? key});

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petpass App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hayvan Ekle'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
ImagePicker imagePicker =ImagePicker();


class _MyHomePageState  extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    var petname;
    void set_petname(String a){
      petname = a;
    }
    var petfamily;
    void set_petfamily(String b){
      petfamily = b;
    }
    var pettype;
    void set_pettype(String c){
      pettype = c;
    }
    var petweight;
    void set_petweight(String d){
      petweight = d;
    }
    var petkode;
    void set_petkode(String e){
      petkode = e;
    }
    var petbirth;
    void set_petbirth(String e){
      petbirth = e;
    }



    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
            ),
            Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 130,
                    child:Row(
                      children: [
                        const SizedBox(
                          height: 100,
                          width: 100,
                          child:CircleAvatar(
                            backgroundImage: AssetImage( ''),
                            radius: 50, // set the size of the circle avatar,
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Icon(Icons.edit),
                              onTap: (){
                                print("Camera clicked");
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => bottomSheet(context),
                                );
                              },
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
            //fotograf ekle
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),//verileri al textfield

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //ad
                  onChanged: (_a) {
                    set_petname(_a);
                  },
                  decoration: InputDecoration(
                    labelText : "Adı",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //tür
                  onChanged: (_b) {
                    set_petfamily(_b);
                  },
                  decoration: InputDecoration(
                    labelText : "Türü",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //ırk
                  onChanged: (_c) {
                    set_pettype(_c);
                  },
                  decoration: InputDecoration(
                    labelText : "ırkı ",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),
            //date.dart ı buraya çağır
            /*ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatePickerExample()),
                );
              },
              child: Text('$pettype doğum tarihi seç'),
            ),*/
            Padding( //doğum tarihi
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //tür
                  onChanged: (_f) {
                    set_petbirth(_f);
                  },
                  decoration: InputDecoration(
                    labelText : "Doğum tarihi",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),


            Padding(//kilo
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //tür
                  onChanged: (_d) {
                    set_petweight(_d);
                  },
                  decoration: InputDecoration(
                    labelText : "Kilosu",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),


            Padding(//chip numarası
              padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 8),
              child: SizedBox(
                height: 35,
                child: TextFormField( //tür
                  onChanged: (_e) {
                    set_petkode(_e);
                  },
                  decoration: InputDecoration(
                    labelText : "Çip kodu",
                    border: OutlineInputBorder(),
                  ),

                ),
              ),
            ),


          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0 ),
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
            "Chose your pet photo",
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
                    takePhoto(ImageSource.gallery);
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
                    takePhoto(ImageSource.camera);
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
Future<void> takePhoto(ImageSource source) async {

  File pickedFile;
  SignUpController signUpController = Get.find();
  final pickedImage =
  await imagePicker.pickImage(source: source, imageQuality: 100);

  pickedFile = File(pickedImage!.path);
  signUpController.setProfileImagePath(pickedFile.path);
  print(pickedFile.exists());

  print(pickedFile.path);
  print(pickedFile);
}