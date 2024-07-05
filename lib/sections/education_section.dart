import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildEducationItem(
                'Korea National Open University',
                'Bachelor of Science in Advanced Engineering, AI Major',
                'Currently Enrolled',
              ),
              SizedBox(width: 40), // Adjust space between items
              _buildEducationItem(
                'Sungkonghoe University Graduate School',
                'Master of Practical Women\'s Studies, NGO Department',
                'Graduation: Feb 2022',
              ),
              SizedBox(width: 40), // Adjust space between items
              _buildEducationItem(
                'Seoul Theological University',
                'Bachelor of Church Music, Organ Major',
                'Graduation: Feb 2015',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String title, String subtitle, String date) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            endIndent: 20,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
