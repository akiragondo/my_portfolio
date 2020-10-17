import 'package:flutter/material.dart';
import 'package:portfolio_electronic/landing_page/widgets/header_widget.dart';
import 'package:portfolio_electronic/landing_page/widgets/single_project_section.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            text: 'Projects',
            isMainHeader: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleProjectSection(
                  name: 'Habido',
                  description:
                      '''Word will insert the following text into your document:
The quick brown fox jumps over the lazy dog.
(As you probably know, this sentence includes every letter in the alphabet and is sometimes used for typing practice.)
Need more than one sentence? You can specify how many sentences you need by changing the last number in the Rand statement. For example, if you needed five sentences, you could type this''',
                  image: 'assets/images/launch-screen.png',
                  portrait: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
