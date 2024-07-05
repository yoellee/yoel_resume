import 'package:flutter/material.dart';

class ReferencesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color for odd section
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'References',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ReferencesItem(
            position: 'Bootcamp Trainee',
            company: 'Thejoeun Academy, Seoul, Korea',
            duration: 'May 2022 - November 2022',
            details: [
              'Completed a bootcamp focused on Big Data Analysis and AI & RPA Solution Development.',
              'Gained practical experience in developing data-driven AI and RPA solutions.',
            ],
          ),
        ],
      ),
    );
  }
}

class ReferencesItem extends StatelessWidget {
  final String position;
  final String company;
  final String duration;
  final List<String> details;

  ReferencesItem({
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
