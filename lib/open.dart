import 'package:flutter/material.dart';
import 'package:travel_app/citydetails.dart';

class Opening extends StatefulWidget {
  const Opening({super.key});

  @override
  State<Opening> createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  String selectedCountry = "ITALY"; // Default selected country
  final Map<String, List<Map<String, String>>> countryImages = {
    "ITALY": [
      {
        "city": "Rome",
        "image":
            "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXRhbHl8ZW58MHx8MHx8fDA%3D",
        "description":
            "Rome, the capital of Italy, is known as the 'Eternal City' due to its nearly 3,000 years of history. Famous for the Colosseum, the Vatican, and its ancient ruins, Rome is a bustling city that perfectly blends the old with the new."
      },
      {
        "city": "Venice",
        "image":
            "https://plus.unsplash.com/premium_photo-1675975678457-d70708bf77c8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aXRhbHl8ZW58MHx8MHx8fDA%3D",
        "description":
            "Venice, built on more than 100 small islands, is famous for its canals, gondolas, and stunning Renaissance and Gothic architecture. Its unique charm and romantic waterways make it one of Italy’s top destinations."
      },
      {
        "city": "Florence",
        "image":
            "https://images.unsplash.com/photo-1514896856000-91cb6de818e0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGl0YWx5fGVufDB8fDB8fHww",
        "description":
            "Florence, the capital of Italy’s Tuscany region, is known as the birthplace of the Renaissance. It’s home to world-class art galleries like the Uffizi and landmarks like the Florence Cathedral and the Ponte Vecchio."
      },
      {
        "city": "Milan",
        "image":
            "https://images.unsplash.com/photo-1533676802871-eca1ae998cd5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGl0YWx5fGVufDB8fDB8fHww",
        "description":
            "Milan is Italy's fashion and design capital, known for its high-end shopping and sophisticated culture. It is also home to architectural masterpieces like the Duomo di Milano and Leonardo da Vinci’s 'The Last Supper.'"
      }
    ],
    "AUSTRALIA": [
      {
        "city": "Sydney",
        "image":
            "https://images.unsplash.com/photo-1501594907352-04cda38ebc29?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXVzdHJhbGlhfGVufDB8fDB8fHww",
        "description":
            "Sydney, Australia's largest city, is famous for its stunning Sydney Opera House and Harbour Bridge. It’s a vibrant city offering a mix of iconic landmarks, beautiful beaches, and dynamic cultural experiences."
      },
      {
        "city": "Melbourne",
        "image":
            "https://images.unsplash.com/photo-1520420097861-1ecb7a5b3a2d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXVzdHJhbGlhfGVufDB8fDB8fHww",
        "description":
            "Melbourne, known for its coffee culture and street art, is often regarded as Australia’s cultural capital. The city is home to historic sites, galleries, and its famed laneways filled with boutique shops and cafes."
      },
      {
        "city": "Brisbane",
        "image":
            "https://images.unsplash.com/photo-1547592180-2b25cb3b37e9?w=600&auto=format&fit=crop&q=60",
        "description":
            "Brisbane, the capital of Queensland, is known for its year-round sunshine, riverside attractions, and nearby natural wonders like the Gold Coast. It’s a modern city with a laid-back vibe."
      },
      {
        "city": "Perth",
        "image":
            "https://images.unsplash.com/photo-1504940727143-4ed62f9d0232?w=600&auto=format&fit=crop&q=60",
        "description":
            "Perth, situated on Australia’s west coast, offers beautiful beaches and a thriving arts scene. It’s known for its sunny weather, outdoor lifestyle, and proximity to the stunning nature reserves."
      }
    ],
    "FRANCE": [
      {
        "city": "Paris",
        "image":
            "https://images.unsplash.com/photo-1566724090520-c4d4b83833d1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZnJhbmNlfGVufDB8fDB8fHww",
        "description":
            "Paris, the capital of France, is known as the 'City of Light.' Famous for landmarks like the Eiffel Tower, the Louvre, and Notre-Dame, Paris is a global center for art, fashion, and culture."
      },
      {
        "city": "Nice",
        "image":
            "https://images.unsplash.com/photo-1528157140230-0b4aef209a0e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8ZnJhbmNlfGVufDB8fDB8fHww",
        "description":
            "Nice is located on the French Riviera and is known for its pebbly beaches, stunning Mediterranean views, and the vibrant Promenade des Anglais. It’s a top destination for those seeking relaxation and scenic beauty."
      }
    ],
    "INDIA": [
      {
        "city": "Mumbai",
        "image":
            "https://images.unsplash.com/photo-1506765515384-028b60a970df?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8fDA%3D",
        "description":
            "Mumbai, India’s largest city and the heart of Bollywood, is a bustling metropolis known for its lively street life, the Gateway of India, and its vibrant blend of old and new cultures."
      },
      {
        "city": "Delhi",
        "image":
            "https://images.unsplash.com/photo-1552641156-18b42a49d699?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8fDA%3D",
        "description":
            "Delhi, the capital city of India, offers a rich history with landmarks like the Red Fort, Qutub Minar, and India Gate. It’s a city where the old meets the new, blending Mughal architecture with modern urban life."
      }
    ],
    "NORWAY": [
      {
        "city": "Oslo",
        "image":
            "https://images.unsplash.com/photo-1526080676457-4544bf0ebba9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bm9yd2F5fGVufDB8fDB8fHww",
        "description":
            "Oslo, the capital of Norway, is known for its stunning fjords, green spaces, and modern architecture. The city is a cultural hub with attractions like the Viking Ship Museum and the Oslo Opera House."
      },
      {
        "city": "Bergen",
        "image":
            "https://images.unsplash.com/photo-1536683402757-75f8d0dfa419?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fG5vcndheXxlbnwwfHwwfHx8MA%3D%3D",
        "description":
            "Bergen, known as the 'Gateway to the Fjords,' is surrounded by mountains and fjords. This charming city is famous for its colorful wooden houses and its rich maritime history."
      }
    ]
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
                  final cityInfo = countryImages[selectedCountry]![index];
                  // final img = countryImages[selectedCountry]![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CityDetailsPage(
                                  des: cityInfo["description"]!,
                                  img: cityInfo["image"]!,
                                  cityName: cityInfo["city"]!,
                                  countryName: selectedCountry,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(cityInfo["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 300,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cityInfo["city"]!.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white70,
                                ),
                              ),
                              Text(
                                selectedCountry.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
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
