import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
                name: "Un hermoso paisaje",
                imageUrl:
                    "https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000"),
            CustomCard2(
                imageUrl:
                    "https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000"),
            CustomCard2(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkF1B2g3K7_cJJUcFJjq6qypS7RppShecWl7KKNVWz5mqF5nfb-_05i7vJsso0UmEGSDs&usqp=CAU"),
            CustomCard2(
                imageUrl:
                    "https://cdn.dribbble.com/users/674925/screenshots/15164787/media/e8b405dd06d9a29f1334edebe1a441e5.jpg?compress=1&resize=400x300")
          ],
        ));
  }
}
