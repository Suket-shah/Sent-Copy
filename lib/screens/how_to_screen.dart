import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/menu_button.dart';

class HowToScreen extends StatefulWidget {
  static const routeName = '/how-to-screen';
  @override
  _HowToScreenState createState() => _HowToScreenState();
}

class _HowToScreenState extends State<HowToScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    const screenOneText = 'Fill out our in app form and have your package sent';
    const screenTwoText = 'text 2';
    const screenThreeText = 'text 3';
    const screenFourText = 'text 4';

    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(
            child: _genScreen(
              height,
              width,
              screenOneText,
              Colors.redAccent,
              AssetImage('assets/images/sent_box.jpeg'),
            ),
          ),
          Container(
            child: _genScreen(
              height,
              width,
              screenTwoText,
              Colors.amber,
              AssetImage('assets/images/sent_box.jpeg'),
            ),
          ),
          Container(
            child: _genScreen(
              height,
              width,
              screenThreeText,
              Colors.amber,
              AssetImage('assets/images/sent_box.jpeg'),
            ),
          ),
          Container(
            child: _genScreen(
              height,
              width,
              screenFourText,
              Colors.amber,
              AssetImage('assets/images/sent_box.jpeg'),
            ),
          ),
          MenuButton(),
        ],
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  _genScreen(
    double height,
    double width,
    String text,
    Color pageColor,
    AssetImage pageImage,
  ) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image(
                image: pageImage,
              ),
            ),
            height: height / 4,
          ),
          Container(
            child: Text(
              '$text',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.only(top: height / 10),
          )
        ],
      ),
      color: pageColor,
    );
  }
}
