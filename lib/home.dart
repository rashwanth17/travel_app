import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/destinations.dart';
import 'package:travel_app/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              color: Colors.black,
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                    left: 20,
                    bottom: 40,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "DESTINATION",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destination.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                        child: scroallableImage(context, des[index]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.035,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "HOT DESTINATION",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: primary.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "MORE",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: primary.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Added scroll direction
                    itemCount: destination.length, // Added item count
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                        child: hotDestinationItem(
                            hotDestination[index]["image"]!,
                            context,
                            hotDestination[index]["name"]!,
                            hotDestination[index]["no"]!),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          margin: EdgeInsets.only(
                              left: 15, bottom: 20), // Spacing between images
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(destination[0]["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15), // Space between image and content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Explore the beauty of nature in this breathtaking destination. Discover hidden gems and enjoy a memorable adventure.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Destinations(
                                  //   image: hotDestination[0]["image"]!,
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text("Learn More"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          margin: EdgeInsets.only(
                              left: 15, bottom: 20), // Spacing between images
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(destination[1]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15), // Space between image and content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Explore the beauty of nature in this breathtaking destination. Discover hidden gems and enjoy a memorable adventure.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text("Learn More"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          margin: EdgeInsets.only(
                              left: 15, bottom: 20), // Spacing between images
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(destination[2]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15), // Space between image and content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Explore the beauty of nature in this breathtaking destination. Discover hidden gems and enjoy a memorable adventure.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text("Learn More"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotDestinationItem(
      String image, BuildContext context, String name, String no) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Destinations(
                      image: image,
                    )));
      },
      child: Stack(
        children: [
          Container(
            height: 220,
            width: 150,
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 1.0,
              child: Container(
                height: 220,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 2,
              right: 5,
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: Colors.white70),
                  ),
                  Text(
                    no,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        color: primary),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget scroallableImage(BuildContext context, String image) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(right: 20),
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Opacity(
            opacity: 1.0,
            child: Container(
              height: 220,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(child: Text("data"))
      ],
    );
  }
}
