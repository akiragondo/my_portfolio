import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BulletPoint extends StatelessWidget {
  final String text;
  BulletPoint({
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
      ),
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.cog,
            color: Theme.of(context).accentColor,
            size: 12,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 8,
              bottom: 6,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).highlightColor,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
