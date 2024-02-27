import 'package:flutter/material.dart';
import '../../../../global/common/Header.dart';
import 'RoadmapPage.dart';

class MustKnow2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                SizedBox(height: 46),
                _buildCollegeBlock(
                  "Community College",
                  "Community colleges are post-secondary educational institutions that offer a wide range of affordable and accessible courses and degree programs, primarily serving local communities and providing opportunities for skill development, career advancement, earning an associates degree, and transferring to a four-year college.",
                  Colors.lightBlue[100],
                ),
                SizedBox(height: 46),
                _buildCollegeBlock(
                  "Four Year College",
                  "Four-year colleges are higher education institutions that offer bachelor's degree programs and are designed to provide in-depth academic and professional education over a four-year period.",
                  Colors.yellow[200],
                ),
                SizedBox(height: 46),
                _buildCollegeBlock(
                  "Trade or Vocational School",
                  "A trade school is an educational institution that offers specialized vocational and hands-on training programs, typically focused on teaching specific skills or trades for immediate entry into the workforce, such as a web developer, dental hygienist, legal assistant, or veterinarian.",
                  Colors.green[300],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 130,
            right: 130,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to RoadmapPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoadmapPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollegeBlock(String title, String description, Color? color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
