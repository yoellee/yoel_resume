import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF47C42), // Background color
      padding: EdgeInsets.all(70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                width: 200, // Set the desired width
                height: 200, // Set the desired height
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomLeft,
            child: Html(
              data: '© 2024 Yoel Lee. All rights reserved.<br>출처 <a href="https://kr.freepik.com/free-psd/portofolio-banner-design-template_17972678.htm">Freepik</a>',
              style: {
                "body": Style(
                  fontSize: FontSize(12),
                  color: Colors.black54,
                ),
                "a": Style(
                  color: Colors.blue,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
