import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          EducationItem(
            institution: 'Korea National Open University',
            degree: 'Bachelor of Science in Advanced Engineering, AI Major',
            status: 'Currently Enrolled',
          ),
          EducationItem(
            institution: 'Sungkonghoe University Graduate School',
            degree: 'Master of Practical Women\'s Studies, NGO Department',
            status: 'Graduation: Feb 2022',
          ),
          EducationItem(
            institution: 'Seoul Theological University',
            degree: 'Bachelor of Church Music, Organ Major',
            status: 'Graduation: Feb 2015',
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String institution;
  final String degree;
  final String status;

  EducationItem({
    required this.institution,
    required this.degree,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            institution,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            degree,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
