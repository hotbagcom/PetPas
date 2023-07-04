import 'package:flutter/material.dart';
import 'addpet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hayvan Listesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/addPet': (context) => AddPetPage(),
      },
    );
  }
}

class Pet {
  String name;
  List<String> vaccines;
  String image;
  int age;
  String gender;

  Pet({
    required this.name,
    required this.vaccines,
    required this.image,
    required this.age,
    required this.gender,
  });
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pet> petList = [
    Pet(
      name: 'Odin',
      vaccines: [],
      image: "assets/images/odin.png",
      age: 2,
      gender: 'Erkek',
    ),
    Pet(
      name: 'Badem',
      vaccines: [],
      image: 'badem.png',
      age: 1,
      gender: 'Erkek',
    ),
    Pet(
      name: 'Duman',
      vaccines: [],
      image: 'duman.png',
      age:4 ,
      gender: 'Erkek',
    ),
    Pet(
      name: 'Leo',
      vaccines: [],
      image: 'leo.png',
      age: 8,
      gender: 'Erkek',
    ),
    Pet(
      name: 'Boncuk',
      vaccines: [],
      image: 'boncuk.png',
      age: 2,
      gender: 'Dişi',
    ),
    Pet(
      name: 'Gofret',
      vaccines: [],
      image: 'gofret.png',
      age: 1,
      gender: 'Dişi',
    ),
    Pet(
      name: 'Yumak',
      vaccines: [],
      image: 'yumak.png',
      age: 2,
      gender: 'Erkek',
    ),
    Pet(
      name: 'Zeytin',
      vaccines: [],
      image: 'zeytin.png',
      age: 1,
      gender: 'Dişi',
    ),
    Pet(
      name: 'Mırmır',
      vaccines: [],
      image: 'mırmır.png',
      age: 10,
      gender: 'Dişi',
    ),
    Pet(
      name: 'Pamuk',
      vaccines: [],
      image: 'pamuk.png',
      age: 1,
      gender: 'Dişi',
    ),
    // Diğer hayvanlar...
  ];

  List<Pet> filteredList = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredList.addAll(petList);
  }

  void filterList(String keyword) {
    setState(() {
      filteredList = petList
          .where((pet) => pet.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hayvan Listesi'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                filterList(value);
              },
              decoration: InputDecoration(
                labelText: 'Hayvan Ara',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: 48,
                    height: 48,
                    child: CircleAvatar(

                      backgroundColor: Colors.blue, // Renkli yuvarlak için arka plan rengini belirliyoruz
                      child: Image.asset(
                        'assets/images/${filteredList[index].image}',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  title: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      filteredList[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PetDetailPage(
                          pet: filteredList[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPetPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PetDetailPage extends StatelessWidget {
  final Pet pet;

  PetDetailPage({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: ListView.builder(
        itemCount: pet.vaccines.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(pet.vaccines[index]),
          );
        },
      ),
    );
  }
}
