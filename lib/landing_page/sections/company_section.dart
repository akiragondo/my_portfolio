import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/header_widget.dart';
import 'package:portfolio_electronic/landing_page/widgets/single_company_section.dart';

class CompanySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          text: 'Experience',
          isMainHeader: 1,
        ),
        Container(
          width: (MediaQuery.of(context).size.width - 144 * 2) * 0.55,
          child: Text(
            '''Word will insert the following text into your document: The quick brown fox jumps over the lazy dog.''',
            style: Theme.of(context).primaryTextTheme.bodyText1,
            softWrap: true,
          ),
        ),
        SingleCompanySection(
          name: 'ExxonMobil',
          image: 'assets/images/exxon_logo.png',
          skills: [
            'HTML',
            'CSS',
            'Javascript',
            'Tableau',
            'SQL',
            'Project Management',
          ],
          description:
              '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
        ),
        SingleCompanySection(
          name: 'KPMG',
          image: 'assets/images/kpmg_logo.png',
          skills: [
            'Information Security',
            'Power BI',
            'AWS Infrastructure',
            'Privacy Protection',
            'GDPR',
          ],
          description:
              '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
        ),
        SingleCompanySection(
          name: '4Vants',
          image: 'assets/images/4vants_logo.png',
          skills: [
            'Computer Vision',
            'Machine Learning',
            'Digital Image Processing',
            'MongoDB',
            'Jenkins',
            'AWS',
          ],
          description:
              '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
        ),
      ],
    ));
  }
}
