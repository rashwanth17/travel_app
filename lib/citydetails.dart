import 'package:flutter/material.dart';

class CityDetailsPage extends StatefulWidget {
  final String cityName;
  final String countryName;
  final String img;
  final String des;

  const CityDetailsPage({
    Key? key,
    required this.cityName,
    required this.des,
    required this.img,
    required this.countryName,
  }) : super(key: key);

  @override
  _CityDetailsPageState createState() => _CityDetailsPageState();
}

class _CityDetailsPageState extends State<CityDetailsPage> {
  int _selectedDays = 1; // Default selected number of days

  // Sample expenses for each day
  final List<int> _dailyExpenses = [100, 80, 120, 150, 200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '${widget.cityName}, ${widget.countryName}',
          style: const TextStyle(color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image container with decoration and fixed size
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
              // Welcome text
              Text(
                'Welcome to ${widget.cityName}, located in ${widget.countryName}!',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // City description
              Text(
                widget.des,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // Scrollable Row of Buttons to Select Number of Days
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [1, 2, 3, 4, 5].map((days) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedDays = days;
                          });
                        },
                        child: Text(
                          "$days Day${days > 1 ? 's' : ''}",
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _selectedDays == days
                              ? Colors.white
                              : Colors.white10,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 20),

              // Display Travel Plan for selected number of days
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(_selectedDays, (index) {
                  DateTime date = DateTime.now().add(Duration(days: index));
                  return Card(
                    shadowColor: Colors.grey,
                    surfaceTintColor: Colors.grey,
                    color: Colors.black,
                    elevation: 2,
                    child: ListTile(
                      title: Text(
                        'Day ${index + 1}: ${date.toLocal().toString().split(' ')[0]}',
                        style: TextStyle(color: Colors.grey),
                      ),
                      subtitle: Text(
                        "Expense: ${_dailyExpenses[index]} EUR",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
