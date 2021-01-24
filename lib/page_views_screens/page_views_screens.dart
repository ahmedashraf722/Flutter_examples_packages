import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_examples/images_slider/images_slides.dart';
import 'package:flutter_examples/splash_screens.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Data {
  final String title;
  final String description;
  final String imageUrl;
  final IconData iconData;

  Data({
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.iconData,
  });
}

class PageViewScreens extends StatefulWidget {
  @override
  _PageViewScreensState createState() => _PageViewScreensState();
}

class _PageViewScreensState extends State<PageViewScreens> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final _pageIndexNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 7), (timer) {
      if (_currentIndex < 3) {
        _currentIndex++;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });

    super.initState();
  }

  final List<Data> myData = [
    Data(
      title: "Title 1",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      imageUrl: 'assets/images/q1.jpg',
      iconData: Icons.ac_unit,
    ),
    Data(
      title: "Title 2",
      description:
          "Sed do eiusmod tempor et dolore magna aliqua.ad minim veniam",
      imageUrl: 'assets/images/q2.jpg',
      iconData: Icons.image,
    ),
    Data(
      title: "Title 3",
      description: "Quis nostrud exercitation ullamco laboris ex consequat.",
      imageUrl: 'assets/images/q3.jpg',
      iconData: Icons.post_add_outlined,
    ),
    Data(
      title: "Title 4",
      description: "Lorem ipsum dolor sit amet, consectetur elit,See You",
      imageUrl: 'assets/images/q4.jpg',
      iconData: Icons.verified_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a': (context) => PageViewScreens(),
        '/b': (context) => SplashScreens(),
        '/c': (context) => ImagesSlides(),
      },
      home: Scaffold(
        body: Stack(
          alignment: Alignment(0, 0.7),
          children: [
            PageView(
              controller: _pageController,
              children: myData.map((item) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: ExactAssetImage(item.imageUrl),
                    fit: BoxFit.cover,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.iconData, size: 80),
                      SizedBox(height: 50),
                      Text(
                        item.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        item.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
              onPageChanged: (val) {
                _pageIndexNotifier.value = val;
                setState(() {
                  _currentIndex = val;
                  /*  if (_currentIndex == 3) {
                    Future.delayed(
                      Duration(
                        seconds: 3,
                      ),
                      () => Navigator.of(context).pushNamed('/a'),
                    );
                  }*/
                });
              },
            ),
            buildPageViewIndicator(),
            //Indicator(_currentIndex),
            Builder(
              builder: (ctx) => Align(
                alignment: Alignment(0, 0.95),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () async {
                      Navigator.of(ctx).pushNamed('/b');
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.setBool('x', true);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageViewIndicator buildPageViewIndicator() {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: myData.length,
      normalBuilder: (animationController, index) =>
          Circle(size: 8.0, color: Colors.black87),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(parent: animationController, curve: Curves.ease),
        child: Circle(size: 12.0, color: Colors.white),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;

  Indicator(this.index);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(0, index == 0 ? Colors.green[700] : Colors.red[700]),
          buildContainer(1, index == 1 ? Colors.green[700] : Colors.red[700]),
          buildContainer(2, index == 2 ? Colors.green[700] : Colors.red[700]),
          buildContainer(3, index == 3 ? Colors.green[700] : Colors.red[700]),
        ],
      ),
    );
  }

  Widget buildContainer(int i, Color color) {
    return index == i
        ? Icon(Icons.verified)
        : Container(
            margin: EdgeInsets.all(4),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          );
  }
}
