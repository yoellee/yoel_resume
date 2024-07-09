import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8B88B), // Background color
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.education,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Adjust space between title and content
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildEducationItem(
                AppLocalizations.of(context)!.knou,
                AppLocalizations.of(context)!.knouDegree,
                AppLocalizations.of(context)!.knouStatus,
              ),
              SizedBox(width: 40), // Adjust space between items
              _buildEducationItem(
                AppLocalizations.of(context)!.sku,
                AppLocalizations.of(context)!.skuDegree,
                AppLocalizations.of(context)!.skuStatus,
              ),
              SizedBox(width: 40), // Adjust space between items
              _buildEducationItem(
                AppLocalizations.of(context)!.stu,
                AppLocalizations.of(context)!.stuDegree,
                AppLocalizations.of(context)!.stuStatus,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String title, String subtitle, String date) {
    return Expanded(
      child: Column(
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
            subtitle,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
