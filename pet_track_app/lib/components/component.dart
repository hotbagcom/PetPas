import 'package:flutter/material.dart';
import 'package:pet_track_app/product/product.dart';

class ProfileDrawerWidget extends StatelessWidget {
  const ProfileDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Başlik',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('Öğe 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Öğe 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

// Kullanıcı profili CardList'i yöneten buton
class CardControllerButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;

  const CardControllerButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 17,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? const Color.fromARGB(156, 95, 0, 110),
        ),
        height: 49,
        width: 132,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// Kullanıcı Profili PP ve Ad Soyad
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.pp,
    required this.text,
  }) : super(key: key);

  final String pp;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MainColors().backGroundColor,
      elevation: 0,
      child: Column(
        children: [
          // ignore: unnecessary_null_comparison
          if (pp != null)
            Image.asset(pp)
          else
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.grey[500],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// profil kısmındaki hayvanlarım listesindeki image'ların buton widgeti
class ProfilePetImageButton extends StatelessWidget {
  const ProfilePetImageButton({
    super.key,
    required this.pp,
  });

  final String pp;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.asset(pp),
    );
  }
}

// Kullanıcı profili Hayvan ve Gelecek etkinlikleri içerek olan liste
class ProfileContainerList extends StatelessWidget {
  const ProfileContainerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: MainColors().primaryColor),
      height: 500,
      width: 380,
      child: const Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
