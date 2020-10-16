import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/bullet_point.dart';
import 'package:portfolio_electronic/landing_page/widgets/header_widget.dart';

class SingleEducationSection extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  SingleEducationSection({
    @required this.name,
    @required this.description,
    @required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
        bottom: 48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            text: name,
            isMainHeader: -1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 144 * 2) * 0.6,
                child: Text(
                  description,
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                  softWrap: true,
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 144 * 2 - 24 - 24) *
                    0.4,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                height: 140,
                child: Image.asset(
                  image,
                  color: Theme.of(context).backgroundColor,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
