import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF47C42), // Background color
      padding: EdgeInsets.all(70),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.yoelLee,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  AppLocalizations.of(context)!.personalizedForYou,
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0), // Adjust horizontal padding as needed
                  child: Text(
                    AppLocalizations.of(context)!.developerDescription,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 200), // Add space between text and image
          Image.asset(
            'assets/character.png', // Add your image path here
            width: 200, // Set the desired width
            height: 200, // Set the desired height
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
