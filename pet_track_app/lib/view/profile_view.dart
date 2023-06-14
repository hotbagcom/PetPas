import 'package:flutter/material.dart';

import '../components/component.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    var pp = 'pet_track_app/lib/assets/odin_profile.png';
    var logo = 'pet_track_app/lib/assets/petpas_logo.png';
    var user = "Mert Karahan";
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
            color: Colors.black,
          )
        ],
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_before_rounded,
                color: Colors.black,
              ),
            )
            // Image.asset(pp),
            // alignment yapılacak
            // Image.asset(logo) ,
          ],
        ),
      ),
      body: Padding(
        padding: Paddings.profilePagePadding,
        child: Column(
          children: [
            Center(
                child: ProfileCard(
              pp: pp,
              text: user,
            )),
            const Padding(
              padding: Paddings.profilePageColumnPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScrollButtonCard(text: "Hayvanlarım"),
                  ScrollButtonCard(
                    text: "Gelecek Aşılar",
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(34, 172, 202, 100)),
              height: 500,
              width: 380,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class Paddings {
  static const profilePagePadding = EdgeInsets.symmetric(horizontal: 20);
  static const profilePageColumnPadding = EdgeInsets.all(20);
}
