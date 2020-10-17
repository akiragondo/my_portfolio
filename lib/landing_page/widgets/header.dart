import 'dart:ui';

import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      expandedHeight: 140,
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        titlePadding: const EdgeInsets.all(
          0,
        ),
        background: Container(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 8,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    14,
                  ),
                  child: Image.asset(
                    'assets/images/logo-v2.png',
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        'About me',
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        'Education',
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      //   padding: EdgeInsets.only(
                      //     left: 12,
                      //     right: 12,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Theme.of(context).accentColor,
                      //     ),
                      //     borderRadius: BorderRadius.circular(
                      //       18,
                      //     ),
                      //   ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
