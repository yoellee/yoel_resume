import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'sections/education_section.dart';
import 'sections/experience_section.dart';
import 'sections/references_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/volunteer_experience_section.dart';

void main() {
  runApp(MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyResumePage(),
    );
  }
}

class MyResumePage extends StatefulWidget {
  @override
  _MyResumePageState createState() => _MyResumePageState();
}

class _MyResumePageState extends State<MyResumePage> {
  final ItemScrollController _scrollController = ItemScrollController();

  void _scrollToIndex(int index) {
    _scrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF47C42),
      appBar: AppBar(
        backgroundColor: Color(0xFFF47C42),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/image.png', // Add your image here
              height: 40,
            ),
            Row(
              children: [
                _buildNavButton('Education', 0),
                _buildNavButton('Experience', 1),
                _buildNavButton('References', 2),
                _buildNavButton('Skills', 3),
                _buildNavButton('Projects', 4),
                _buildNavButton('Volunteer', 5),
              ],
            ),
          ],
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: 6, // Including Volunteer Experience
        itemScrollController: _scrollController,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return EducationSection();
            case 1:
              return ExperienceSection();
            case 2:
              return ReferencesSection();
            case 3:
              return SkillsSection();
            case 4:
              return ProjectsSection();
            case 5:
              return VolunteerExperienceSection();
            default:
              return Container();
          }
        },
      ),
    );
  }

  Widget _buildNavButton(String text, int index) {
    return TextButton(
      onPressed: () => _scrollToIndex(index),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF4A4A4A),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
