import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF8ED6E5), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.experience,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          _buildExperienceItem(
            AppLocalizations.of(context)!.rpaDeveloper,
            AppLocalizations.of(context)!.ainno,
            AppLocalizations.of(context)!.ainnoPeriod,
            [
              AppLocalizations.of(context)!.rpaResponsibility1,
              AppLocalizations.of(context)!.rpaLocation1,
            ],
          ),
          SizedBox(height: 20), // Adjust space between items
          _buildExperienceItem(
            AppLocalizations.of(context)!.rpaDeveloper,
            AppLocalizations.of(context)!.snjtest,
            AppLocalizations.of(context)!.snjtestPeriod,
            [
              AppLocalizations.of(context)!.rpaResponsibility1,
              AppLocalizations.of(context)!.rpaLocation2,
            ],
          ),
          SizedBox(height: 20), // Adjust space between items
          _buildExperienceItem(
            AppLocalizations.of(context)!.rpaDeveloper,
            AppLocalizations.of(context)!.gritstandard,
            AppLocalizations.of(context)!.gritstandardPeriod,
            [
              AppLocalizations.of(context)!.rpaResponsibility1,
              AppLocalizations.of(context)!.rpaLocation3,
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceItem(String title, String company, String period, List<String> responsibilities) {
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
          company,
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
        for (var responsibility in responsibilities)
          Text(
            responsibility,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}
