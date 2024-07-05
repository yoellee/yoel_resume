import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '• Programming Languages: Python, C#, Flutter, Java, VBA',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '• Databases: MySQL, MariaDB, SQLite3, Firebase',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '• Web Development: HTML, CSS, JavaScript, Django',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '• RPA Tools: Uipath, A.works, AutomationOne etc.',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '• Tools: Git, AWS, Jira, Slack',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
