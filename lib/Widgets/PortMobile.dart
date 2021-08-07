import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Navigations/NavBar.dart';
import 'package:portfolio/Navigations/NavMenu.dart';
import 'package:portfolio/Widgets/PortDetail2.dart';
import 'package:portfolio/Widgets/PortDetails.dart';
import 'package:portfolio/Widgets/portDetail1.dart';
import 'package:portfolio/Widgets/portDetail3.dart';
import 'package:portfolio/const.dart';

class PortMobile extends StatelessWidget {
  final width;
  const PortMobile({Key? key, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: MobileDrawer(),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              fixSizeh,
              fixSizeh,
              ImageSliderMobile1(
                width: this.width,
              ),
              
              fixSizeh,
              Divider(),
              fixSizeh,
              fixSizeh,
              ImageSliderMobile3(
                width: this.width,
              ),
              fixSizeh,
              Divider(),
              fixSizeh,
              fixSizeh,
              ImageSliderMobile4(
                width: this.width,
              ),fixSizeh,
              Divider(),
              fixSizeh,
              fixSizeh,
              ImageSliderMobile2(
                width: this.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSliderMobile1 extends StatelessWidget {
  final width;
  const ImageSliderMobile1({
    Key? key,
    @required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        child: Column(
      children: [
        PortDetail(
          width: this.width,
        ),
        fixSizeh,
        fixSizeh,
        CarouselSlider(
          items: [
            'assets/images/n1.jpeg',
            'assets/images/n2.jpeg',
            'assets/images/n3.jpeg',
            'assets/images/n4.jpeg',
            'assets/images/n5.jpeg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    // width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                  // child: Image.network(i, fit: BoxFit.fill),
                  child: Hero(
                    tag: i,
                    child: Image(
                      image: AssetImage(
                        i,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          tag: i,
                          image: i,
                        ),
                      ),
                    );
                  },
                ));
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.2,
          ),
        ),
      ],
    ));

    return image_carousel;
  }
}

class ImageSliderMobile4 extends StatelessWidget {
  final width;
  const ImageSliderMobile4({
    Key? key,
    @required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        child: Column(
      children: [
        PortDetail1(
          width: this.width,
        ),
        fixSizeh,
        fixSizeh,
        CarouselSlider(
          items: [
            'assets/images/t1.jpg',
            'assets/images/t2.jpg',
            'assets/images/t3.jpg'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    // width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                  // child: Image.network(i, fit: BoxFit.fill),
                  child: Hero(
                    tag: i,
                    child: Image(
                      image: AssetImage(
                        i,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          tag: i,
                          image: i,
                        ),
                      ),
                    );
                  },
                ));
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.2,
          ),
        ),
      ],
    ));

    return image_carousel;
  }
}

class ImageSliderMobile2 extends StatelessWidget {
  final width;
  const ImageSliderMobile2({
    Key? key,
    @required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        child: Column(
      children: [
        PortDetail2(
          width: this.width,
        ),
        fixSizeh,
        fixSizeh,
        CarouselSlider(
          items: [
            'assets/images/m1.jpg',
            'assets/images/m2.jpg',
            'assets/images/m3.jpg',
            'assets/images/m4.jpg',
            'assets/images/m5.jpg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    // width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                  // child: Image.network(i, fit: BoxFit.fill),
                  child: Hero(
                    tag: i,
                    child: Image(
                      image: AssetImage(
                        i,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          tag: i,
                          image: i,
                        ),
                      ),
                    );
                  },
                ));
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.2,
          ),
        ),
      ],
    ));

    return image_carousel;
  }
}

class ImageSliderMobile3 extends StatelessWidget {
  final width;
  const ImageSliderMobile3({
    Key? key,
    @required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        child: Column(
      children: [
        PortDetail3(
          width: this.width,
        ),
        fixSizeh,
        fixSizeh,
        CarouselSlider(
          items: [
            'assets/images/a1.jpg',
            'assets/images/a2.jpg',
            'assets/images/a3.jpg',
            'assets/images/a4.jpg',
            'assets/images/a5.jpg',
            'assets/images/a6.jpg'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    // width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                  // child: Image.network(i, fit: BoxFit.fill),
                  child: Hero(
                    tag: i,
                    child: Image(
                      image: AssetImage(
                        i,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          tag: i,
                          image: i,
                        ),
                      ),
                    );
                  },
                ));
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.2,
          ),
        ),
      ],
    ));

    return image_carousel;
  }
}

class ImageScreen extends StatelessWidget {
  final tag, image;
  const ImageScreen({Key? key, this.tag, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                fixSizeh,
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.cancel_presentation)),
                fixSizeh,
                Hero(
                  tag: tag,
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
