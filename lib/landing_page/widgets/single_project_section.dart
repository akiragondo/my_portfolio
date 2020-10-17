import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/header_widget.dart';

class SingleProjectSection extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final bool portrait;
  SingleProjectSection({
    @required this.name,
    @required this.description,
    @required this.image,
    @required this.portrait,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 2 * 156;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            text: name,
            isMainHeader: -1,
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              left: 32,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    image,
                    width: width * 0.20,
                    height: 360,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 32,
                  ),
                  width: width * 0.55,
                  child: Text(
                    description,
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                    softWrap: true,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
