import 'package:flutter/material.dart';

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
            child: Text(
              'Drawer Başlik',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
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

class ScrollButtonCard extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final Color? textColor;

  const ScrollButtonCard({
    Key? key,
    required this.text,
    this.fontSize = 17,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Color.fromRGBO(110, 22, 124, 100)),
      height: 49,
      width: 132,
      child: Center(
        child: CustomCard(
          text: text,
          fontSize: fontSize,
          color: color,
          textColor: textColor,
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final Color? textColor;

  const CustomCard({
    Key? key,
    required this.text,
    this.fontSize = 20,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Color.fromRGBO(110, 22, 124, 100)),
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
    );
  }
}

// profildeki hayvanlarım ve gelecek aşıları gösteren kart
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
      color: Color.fromRGBO(248, 248, 248, 100),
      elevation: 0,
      child: Column(
        children: [
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
              style: TextStyle(
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
