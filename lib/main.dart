import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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

class MyResumeApp extends StatefulWidget {
  @override
  _MyResumeAppState createState() => _MyResumeAppState();
}

class _MyResumeAppState extends State<MyResumeApp> {
  Locale _locale = Locale('en');

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      locale: _locale,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ko'),
      ],
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
      home: MyResumePage(changeLanguage: _changeLanguage),
    );
  }
}

class MyResumePage extends StatefulWidget {
  final Function(Locale) changeLanguage;

  MyResumePage({required this.changeLanguage});

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
                _buildNavButton(AppLocalizations.of(context)!.intro, 0),
                _buildNavButton(AppLocalizations.of(context)!.education, 1),
                _buildNavButton(AppLocalizations.of(context)!.experience, 2),
                _buildNavButton(AppLocalizations.of(context)!.references, 3),
                _buildNavButton(AppLocalizations.of(context)!.skills, 4),
                _buildNavButton(AppLocalizations.of(context)!.projects, 5),
                _buildNavButton(AppLocalizations.of(context)!.volunteer, 6),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => widget.changeLanguage(Locale('en')),
                  child: Text('English'),
                ),
                TextButton(
                  onPressed: () => widget.changeLanguage(Locale('ko')),
                  child: Text('한국어'),
                ),
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
