import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_electronic/landing_page/sections/about_section.dart';
import 'package:portfolio_electronic/landing_page/sections/company_section.dart';
import 'package:portfolio_electronic/landing_page/sections/education_section.dart';
import 'package:portfolio_electronic/landing_page/widgets/header.dart';
import 'package:portfolio_electronic/landing_page/sections/introduction_section.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> _sections = [
    IntroductionSection(),
    Container(
      height: 240,
    ),
    AboutMeSection(),
    Container(
      height: 240,
    ),
    EducationSection(),
    Container(
      height: 240,
    ),
    CompanySection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              CustomHeader(),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 144,
                    vertical: 30,
                  ),
                  height: MediaQuery.of(context).size.height * _sections.length,
                  child: Container(
                    //Scrolling Container
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _sections),
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 320,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 16,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Theme.of(context).highlightColor,
                          size: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 16,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Theme.of(context).highlightColor,
                          size: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 16,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.github,
                          color: Theme.of(context).highlightColor,
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: VerticalDivider(
                          color: Theme.of(context).secondaryHeaderColor,
                          thickness: 2,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  width: 100,
                  child: Column(
                    children: [
                      Expanded(
                        child: VerticalDivider(
                          color: Theme.of(context).secondaryHeaderColor,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
