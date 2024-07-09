import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8ED6E5), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.skills,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          for (var skill in AppLocalizations.of(context)!.skillsList.split('; '))
            _buildSkillItem(skill),
        ],
      ),
    );
  }

  Widget _buildSkillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        skill,
        style: TextStyle(
          fontFamily: 'PlayfairDisplay',
          fontSize: 14,
        ),
      ),
    );
  }
}
