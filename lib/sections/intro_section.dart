import 'package:flutter/material.dart';

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
                  'YOEL LEE',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Personalized for You',
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
                    'A developer seeking a challenging role to leverage development experience and passion for automation to contribute to innovative projects.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20), // Add space between text and image
          Image.asset(
            'assets/character.png', // Add your image path here
            width: 250, // Set the desired width
            height: 300, // Set the desired height
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
