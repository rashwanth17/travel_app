import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/model.dart';

class Destinations extends StatelessWidget {
  final String image;
  const Destinations({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.58,
              width: size.width,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PARIS",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Paris, the capital of France, is a city of timeless charm known for its iconic landmarks like the Eiffel Tower and Notre-Dame Cathedral. The city is a global center for art, fashion, and culture, boasting world-renowned museums such as the Louvre. Strolling along the Seine River, you'll find charming cafés and historic architecture at every turn. Paris is also celebrated for its culinary delights, from delicate pastries to gourmet dining. Its romantic ambiance and rich history make it a beloved destination for travelers worldwide.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: primary),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
