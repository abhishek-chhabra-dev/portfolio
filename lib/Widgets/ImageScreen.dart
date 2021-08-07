import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

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
