import 'package:flutter/material.dart';

import '../components/component.dart';
import '../product/product.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    var pp = 'lib/assets/odin_pp.png';

    var user = "Mert Karahan";
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainColors().backGroundColor,
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
              icon: const Icon(
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
            Padding(
              padding: Paddings.profilePageColumnPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardControllerButton(
                    text: "Hayvanlarım",
                    onPressed: () {},
                  ),
                  CardControllerButton(
                    text: "Gelecek Aşılar",
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const ProfileContainerList()
          ],
        ),
      ),
    );
  }
}
