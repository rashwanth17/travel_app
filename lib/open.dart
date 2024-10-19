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
            "https://plus.unsplash.com/premium_photo-1676608101981-5f0364908560?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cm9tZXxlbnwwfDF8MHx8fDA%3D",
        "description":
            "Rome, the capital of Italy, is known as the 'Eternal City' due to its nearly 3,000 years of history. Famous for the Colosseum, the Vatican, and its ancient ruins, Rome is a bustling city that perfectly blends the old with the new."
      },
      {
        "city": "Venice",
        "image":
            "https://plus.unsplash.com/premium_photo-1677355911198-5d56b4df49f3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmVuaWNlfGVufDB8fDB8fHww",
        "description":
            "Venice, built on more than 100 small islands, is famous for its canals, gondolas, and stunning Renaissance and Gothic architecture. Its unique charm and romantic waterways make it one of Italy’s top destinations."
      },
      {
        "city": "Florence",
        "image":
            "https://plus.unsplash.com/premium_photo-1676288635850-cd91d5b2a3af?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmxvcmVuY2V8ZW58MHx8MHx8fDA%3D",
        "description":
            "Florence, the capital of Italy’s Tuscany region, is known as the birthplace of the Renaissance. It’s home to world-class art galleries like the Uffizi and landmarks like the Florence Cathedral and the Ponte Vecchio."
      },
      {
        "city": "Milan",
        "image":
            "https://images.unsplash.com/photo-1518797814703-ed31ee241ef8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWlsYW58ZW58MHx8MHx8fDA%3D",
        "description":
            "Milan is Italy's fashion and design capital, known for its high-end shopping and sophisticated culture. It is also home to architectural masterpieces like the Duomo di Milano and Leonardo da Vinci’s 'The Last Supper.'"
      }
    ],
    "AUSTRALIA": [
      {
        "city": "Sydney",
        "image":
            "https://plus.unsplash.com/premium_photo-1697730221799-f2aa87ab2c5d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "description":
            "Sydney, Australia's largest city, is famous for its stunning Sydney Opera House and Harbour Bridge. It’s a vibrant city offering a mix of iconic landmarks, beautiful beaches, and dynamic cultural experiences."
      },
      {
        "city": "Melbourne",
        "image":
            "https://images.unsplash.com/photo-1543557211-135d718a528c?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "description":
            "Melbourne, known for its coffee culture and street art, is often regarded as Australia’s cultural capital. The city is home to historic sites, galleries, and its famed laneways filled with boutique shops and cafes."
      },
      {
        "city": "Brisbane",
        "image":
            "https://images.unsplash.com/photo-1723515953644-ed4185d920ca?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJyaXNiYW5lfGVufDB8fDB8fHww",
        "description":
            "Brisbane, the capital of Queensland, is known for its year-round sunshine, riverside attractions, and nearby natural wonders like the Gold Coast. It’s a modern city with a laid-back vibe."
      },
      {
        "city": "Perth",
        "image":
            "https://images.unsplash.com/photo-1520068071754-06b76876dc84?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVydGh8ZW58MHx8MHx8fDA%3D",
        "description":
            "Perth, situated on Australia’s west coast, offers beautiful beaches and a thriving arts scene. It’s known for its sunny weather, outdoor lifestyle, and proximity to the stunning nature reserves."
      }
    ],
    "FRANCE": [
      {
        "city": "Paris",
        "image":
            "https://images.unsplash.com/photo-1522582324369-2dfc36bd9275?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGFyaXN8ZW58MHx8MHx8fDA%3D",
        "description":
            "Paris, the capital of France, is known as the 'City of Light.' Famous for landmarks like the Eiffel Tower, the Louvre, and Notre-Dame, Paris is a global center for art, fashion, and culture."
      },
      {
        "city": "Nice",
        "image":
            "https://images.unsplash.com/photo-1503696967350-ad1874122058?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG5pY2UlMjBjaXR5JTIwaW4lMjBmcmFuY2V8ZW58MHx8MHx8fDA%3D",
        "description":
            "Nice is located on the French Riviera and is known for its pebbly beaches, stunning Mediterranean views, and the vibrant Promenade des Anglais. It’s a top destination for those seeking relaxation and scenic beauty."
      },
      {
        "city": "Lyon",
        "image":
            "https://images.unsplash.com/photo-1618654240385-0e304bd2e3c1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bHlvbnxlbnwwfHwwfHx8MA%3D%3D",
        "description":
            "Lyon, the third-largest city in France, is renowned for its rich history, vibrant culture, and exceptional cuisine. Situated at the confluence of the Rhône and Saône rivers, Lyon boasts stunning Renaissance architecture, charming old town streets, and expansive public squares."
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
