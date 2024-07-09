import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VolunteerExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8ED6E5), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.volunteer,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          _buildVolunteerItem(
            AppLocalizations.of(context)!.itEducationVolunteer,
            AppLocalizations.of(context)!.haneulCenter,
            AppLocalizations.of(context)!.haneulPeriod,
            AppLocalizations.of(context)!.haneulDescription.split('. '),
          ),
        ],
      ),
    );
  }

  Widget _buildVolunteerItem(String title, String organization, String period, List<String> details) {
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
        Text(
          organization,
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 14,
          ),
        ),
        Text(
          period,
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
        ),
        for (var detail in details)
          Text(
            detail,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}
