import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/header_widget.dart';
import 'package:portfolio_electronic/landing_page/widgets/single_education_section.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            text: 'Education',
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
                    '''Word will insert the following text into your document: The quick brown fox jumps over the lazy dog.''',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                    softWrap: true,
                  ),
                ),
                SingleEducationSection(
                  name: 'Technological University of Brazil',
                  description:
                      '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
                  image: 'assets/images/utfpr_logo.png',
                ),
                SingleEducationSection(
                  name: 'Shibaura Institute of Technology',
                  description:
                      '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
                  image: 'assets/images/sit_logo.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
