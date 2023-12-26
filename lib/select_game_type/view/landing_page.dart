import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tavern Games'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 3 / 4, // Adjust the aspect ratio as needed
        ),
        children: [
          Expanded(
            child: GameChoiceRectangle(
              gameName: 'Klondike Solitaire',
              playersCount: 5,
              backgroundImage:
                  'klondike_image.jpg', // Replace with actual image
            ),
          ),
          Expanded(
            child: GameChoiceRectangle(
              gameName: 'Tarabish',
              playersCount: 3,
              backgroundImage:
                  'tarabish_image.jpg', // Replace with actual image
            ),
          ),
          Expanded(
            child: GameChoiceRectangle(
              gameName: 'Freestyle',
              playersCount: 7,
              backgroundImage:
                  'freestyle_image.jpg', // Replace with actual image
            ),
          ),
        ],
      ),
    );
  }
}

class GameChoiceRectangle extends StatelessWidget {
  final String gameName;
  final int playersCount;
  final String backgroundImage;

  GameChoiceRectangle({
    required this.gameName,
    required this.playersCount,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, // Adjust the height as needed
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          color: Colors.black.withOpacity(0.7),
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                gameName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Players: $playersCount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
