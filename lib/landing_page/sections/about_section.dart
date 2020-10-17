import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/bullet_point.dart';
import '../widgets/header_widget.dart';

class AboutMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            text: 'About me',
            isMainHeader: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 156 * 2) * 0.55,
                  child: Text(
                    '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                    softWrap: true,
                  ),
                ),
                HeaderWidget(
                  text: 'Main Skills',
                  isMainHeader: 0,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 156 * 2) * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BulletPoint(
                            text: 'Python',
                          ),
                          BulletPoint(
                            text: 'Power BI',
                          ),
                          BulletPoint(
                            text: 'VBA',
                          ),
                          BulletPoint(
                            text: 'Information Security',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BulletPoint(
                            text: 'C++',
                          ),
                          BulletPoint(
                            text: 'Flutter',
                          ),
                          BulletPoint(
                            text: 'AWS Infrastructure',
                          ),
                          BulletPoint(
                            text: 'Machine Learning',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
