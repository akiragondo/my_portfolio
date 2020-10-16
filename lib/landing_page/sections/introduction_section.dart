import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'My name is',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            child: Text(
              'Gustavo Akira Gondo',
              style: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).highlightColor,
              ),
            ),
          ),
          Container(
            child: Text(
              'Engineer/Researcher/Maker',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            margin: EdgeInsets.only(
              top: 24,
            ),
            child: Text(
              'I am a Computer Engineer with a passion for research, development, and the general art of making new things work.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24,
            ),
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: 6,
              top: 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).accentColor,
              ),
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
            child: Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
