import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReferencesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.references,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          _buildReferenceItem(
            AppLocalizations.of(context)!.bootcampName,
            AppLocalizations.of(context)!.bootcampLocation,
            AppLocalizations.of(context)!.bootcampPeriod,
            AppLocalizations.of(context)!.referencesDescription.split('. '),
          ),
          SizedBox(height: 40),
          _buildReferenceItem(
            AppLocalizations.of(context)!.bootcampName2,
            AppLocalizations.of(context)!.bootcampLocation2,
            AppLocalizations.of(context)!.bootcampPeriod2,
            AppLocalizations.of(context)!.referencesDescription2.split('. '),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceItem(String title, String organization, String period, List<String> details) {
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
