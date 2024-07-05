import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'sections/education_section.dart';
import 'sections/experience_section.dart';
import 'sections/references_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/volunteer_experience_section.dart';
import 'sections/intro_section.dart';

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
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
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
              'assets/navigatorbarimage.png',
              height: 60,
              width: 200,
              fit: BoxFit.contain,
            ),
            Row(
              children: [
                _buildNavButton('Intro', 0),
                _buildNavButton('Education', 1),
                _buildNavButton('Experience', 2),
                _buildNavButton('References', 3),
                _buildNavButton('Skills', 4),
                _buildNavButton('Projects', 5),
                _buildNavButton('Volunteer', 6),
              ],
            ),
          ],
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: 7,
        itemScrollController: _scrollController,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return IntroSection();
            case 1:
              return EducationSection();
            case 2:
              return ExperienceSection();
            case 3:
              return ReferencesSection();
            case 4:
              return SkillsSection();
            case 5:
              return ProjectsSection();
            case 6:
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
