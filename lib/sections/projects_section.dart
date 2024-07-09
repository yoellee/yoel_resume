import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            AppLocalizations.of(context)!.projects,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40), // Space between title and content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildProjectItem(
                  AppLocalizations.of(context)!.project1Title,
                  AppLocalizations.of(context)!.project1Description,
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  AppLocalizations.of(context)!.project2Title,
                  AppLocalizations.of(context)!.project2Description,
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
                  AppLocalizations.of(context)!.project3Title,
                  AppLocalizations.of(context)!.project3Description,
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  AppLocalizations.of(context)!.project4Title,
                  AppLocalizations.of(context)!.project4Description,
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
                  AppLocalizations.of(context)!.project5Title,
                  AppLocalizations.of(context)!.project5Description,
                ),
              ),
              SizedBox(width: 40), // Space between columns
              Expanded(
                child: _buildProjectItem(
                  AppLocalizations.of(context)!.project6Title,
                  AppLocalizations.of(context)!.project6Description,
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
                  AppLocalizations.of(context)!.project7Title,
                  AppLocalizations.of(context)!.project7Description,
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
