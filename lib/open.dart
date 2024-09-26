import 'package:flutter/material.dart';

class Opening extends StatefulWidget {
  const Opening({super.key});

  @override
  State<Opening> createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  String selectedCountry = "ITALY"; // Default selected country
  final Map<String, List<String>> countryImages = {
    "ITALY": [
      "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXRhbHl8ZW58MHx8MHx8fDA%3D",
      "https://plus.unsplash.com/premium_photo-1675975678457-d70708bf77c8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aXRhbHl8ZW58MHx8MHx8fDA%3D",
      "https://images.unsplash.com/photo-1514896856000-91cb6de818e0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGl0YWx5fGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1533676802871-eca1ae998cd5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGl0YWx5fGVufDB8fDB8fHww"
    ],
    "AUSTRALIA": [
      "https://images.unsplash.com/photo-1501594907352-04cda38ebc29?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXVzdHJhbGlhfGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1520420097861-1ecb7a5b3a2d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXVzdHJhbGlhfGVufDB8fDB8fHww",
    ],
    "FRANCE": [
      "https://images.unsplash.com/photo-1566724090520-c4d4b83833d1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZnJhbmNlfGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1528157140230-0b4aef209a0e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8ZnJhbmNlfGVufDB8fDB8fHww",
    ],
    "INDIA": [
      "https://images.unsplash.com/photo-1506765515384-028b60a970df?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8fDA%3D",
      "https://images.unsplash.com/photo-1552641156-18b42a49d699?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8fDA%3D",
    ],
    "NORWAY": [
      "https://images.unsplash.com/photo-1526080676457-4544bf0ebba9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bm9yd2F5fGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1536683402757-75f8d0dfa419?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fG5vcndheXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1485903266100-192c2e0af64f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fG5vcndheXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1513507051-c277fe70c8a5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fG5vcndheXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1483347756197-71ef80e95f73?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bm9ydGhlcm4lMjBsaWdodHN8ZW58MHx8MHx8fDA%3D"
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1501436513145-30f24e19fcc8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG9jZWFufGVufDB8fDB8fHww',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Icon(
              Icons.line_weight_sharp,
              color: Colors.white70,
            ),
          ),
          Positioned(
            left: 10,
            top: 40,
            child: Text(
              'EXPLORE THE\nWORLD WITH\nUS',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Positioned(
            left: 10,
            top: 250,
            right: 10,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: countryImages.keys.map((country) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCountry = country;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        country,
                        style: TextStyle(
                          color: selectedCountry == country
                              ? Colors.white
                              : Colors.white70,
                          fontSize: selectedCountry == country ? 20 : 15,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 10,
            right: 10,
            child: SizedBox(
              height: 400,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: countryImages[selectedCountry]!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print(0);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    countryImages[selectedCountry]![index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 300,
                          left: 10,
                          child: Text(
                            selectedCountry.toUpperCase(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
