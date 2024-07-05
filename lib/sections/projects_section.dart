import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Space between title and content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildProjectItem(
                  'RPA Automation for Korea Investment & Securities',
                  'Led automation project, enhancing workflows and reducing manual tasks.',
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  'RPA Development & Maintenance for Korea Investment & Securities',
                  'Managed multiple RPA projects, improving efficiency and reducing manual efforts.',
                ),
              ),
            ],
          ),
          SizedBox(height: 40), // Space between rows
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildProjectItem(
                  'Logistics Export Deadline Automation',
                  'Automated export deadline extensions, enhancing compliance and efficiency.',
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  'Import Manifest Management Automation',
                  'Streamlined import management, saving time and reducing errors.',
                ),
              ),
            ],
          ),
          SizedBox(height: 40), // Space between rows
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildProjectItem(
                  'Automated Shipment Tracking Service',
                  'Developed tracking system, improving operational efficiency and accuracy.',
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  'Tracking Service Technology Analysis',
                  'Conducted analysis of tracking technologies, improving service strategies.',
                ),
              ),
            ],
          ),
          SizedBox(height: 40), // Space between rows
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildProjectItem(
                  'Shipping Line Schedule Automation',
                  'Automated scheduling, enhancing logistics efficiency and accuracy.',
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: Container(), // Placeholder for balanced layout
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectItem(String title, String description) {
    return Column(
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
          description,
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
