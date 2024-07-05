import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color for odd section
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ProjectItem(
            title: 'RPA Automation for Korea Investment & Securities',
            duration: 'October 2023 - April 2024',
            details: 'Led automation project, enhancing workflows and reducing manual tasks.',
          ),
          ProjectItem(
            title: 'RPA Development & Maintenance for Korea Investment & Securities',
            duration: 'April 2023 - July 2023',
            details: 'Managed multiple RPA projects, improving efficiency and reducing manual efforts.',
          ),
          ProjectItem(
            title: 'Logistics Export Deadline Automation',
            duration: 'March 2023',
            details: 'Automated export deadline extensions, enhancing compliance and efficiency.',
          ),
          ProjectItem(
            title: 'Import Manifest Management Automation',
            duration: 'March 2023',
            details: 'Streamlined import management, saving time and reducing errors.',
          ),
          ProjectItem(
            title: 'Automated Shipment Tracking Service',
            duration: 'February 2023 - March 2023',
            details: 'Developed tracking system, improving operational efficiency and accuracy.',
          ),
          ProjectItem(
            title: 'Tracking Service Technology Analysis',
            duration: 'January 2023',
            details: 'Conducted analysis of tracking technologies, improving service strategies.',
          ),
          ProjectItem(
            title: 'Shipping Line Schedule Automation',
            duration: 'December 2022',
            details: 'Automated scheduling, enhancing logistics efficiency and accuracy.',
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String duration;
  final String details;

  ProjectItem({
    required this.title,
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
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            duration,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          Text(
            details,
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
