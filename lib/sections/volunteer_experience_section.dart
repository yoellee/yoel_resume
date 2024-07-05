import 'package:flutter/material.dart';

class VolunteerExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8ED6E5), // Background color for even section
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Volunteer Experience',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          VolunteerExperienceItem(
            position: 'IT Education Volunteer',
            organization: 'Haneul Youth Center, Jung-gu, Incheon, Korea',
            duration: 'Jun 2024 - Currently Enrolled',
            details: [
              'Provided basic IT education and mentoring to youth.',
            ],
          ),
        ],
      ),
    );
  }
}

class VolunteerExperienceItem extends StatelessWidget {
  final String position;
  final String organization;
  final String duration;
  final List<String> details;

  VolunteerExperienceItem({
    required this.position,
    required this.organization,
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
            organization,
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
