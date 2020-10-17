import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final int isMainHeader;
  const HeaderWidget({
    Key key,
    @required this.text,
    @required this.isMainHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMainHeader == 1
          ? MediaQuery.of(context).size.width * 0.75
          : MediaQuery.of(context).size.width * 0.45,
      margin: isMainHeader == 1
          ? EdgeInsets.only(
              bottom: 18,
            )
          : EdgeInsets.only(
              bottom: 14,
              top: 12,
            ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Container(
              margin: isMainHeader == 1
                  ? EdgeInsets.only(
                      right: 28,
                    )
                  : EdgeInsets.only(
                      right: 28,
                    ),
              child: Text(
                text,
                style: isMainHeader == 1
                    ? TextStyle(
                        fontSize: 36,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w600,
                      )
                    : isMainHeader == 0
                        ? TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          )
                        : TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: isMainHeader != 0
                  ? EdgeInsets.only(
                      top: 6,
                    )
                  : EdgeInsets.only(
                      top: 2,
                    ),
              child: Divider(
                color: Theme.of(context).secondaryHeaderColor.withOpacity(
                      0.3,
                    ),
                thickness: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
