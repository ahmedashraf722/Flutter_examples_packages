import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImagesSlides extends StatefulWidget {
  @override
  _ImagesSlidesState createState() => _ImagesSlidesState();
}

class _ImagesSlidesState extends State<ImagesSlides> {
  List imgList = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg',
  ];
  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images Carousel Slider",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: buildCarousel(),
    );
  }

  Widget buildCarousel() {
    return ListView(
      children: [
        SizedBox(height: 25),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Slider 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red[700],
                ),
              ),
              TextSpan(
                text: ' to ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
              TextSpan(
                text: 'Slider 3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        CarouselSlider(
          items: imgList.map((image) {
            return Container(
              width: double.infinity,
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 185,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
          ),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContainer(0),
            buildContainer(1),
            buildContainer(2),
          ],
        ),
        SizedBox(height: 20),
        CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              //margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                imgList[index],
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            height: 185,
            initialPage: 1,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            scrollDirection: Axis.vertical,
          ),
        ),
        SizedBox(height: 35),
        CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              //  margin: EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imgList[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
            height: 100,
            initialPage: 2,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 1),
            enableInfiniteScroll: false,
            // pauseAutoPlayOnTouch: false,
            //reverse: true,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Container buildContainer(index) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.red[800] : Colors.green,
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
