import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8ED6E5), // Background color for even section
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Experience',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ExperienceItem(
            position: 'RPA Developer',
            company: 'Ainno, Seoul, Korea',
            duration: 'October 2023 - April 2024',
            details: [
              'Developed and maintained RPA (Robotic Process Automation) solutions.',
              'Ensured continuous operation and maintenance of RPA systems.',
            ],
          ),
          ExperienceItem(
            position: 'RPA Developer',
            company: 'SNJTest, Seoul, Korea',
            duration: 'April 2023 - July 2023',
            details: [
              'Developed and maintained RPA (Robotic Process Automation) solutions.',
              'Ensured continuous operation and maintenance of RPA systems.',
            ],
          ),
          ExperienceItem(
            position: 'RPA Developer',
            company: 'Gritstandard, Seoul, Korea',
            duration: 'December 2022 - April 2023',
            details: [
              'Developed and maintained RPA (Robotic Process Automation) solutions.',
              'Ensured continuous operation and maintenance of RPA systems.',
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String position;
  final String company;
  final String duration;
  final List<String> details;

  ExperienceItem({
    required this.position,
    required this.company,
    required this.duration,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            company,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          Text(
            duration,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          ...details.map((detail) => Text('• $detail')).toList(),
        ],
      ),
    );
  }
}
