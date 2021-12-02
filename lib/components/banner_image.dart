import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String imagePath;
  final String altText;
  final String overImageText;
  final Animation<Color?> colour;

  const BannerImage(
      {Key? key,
      required this.imagePath,
      required this.altText,
      required this.overImageText,
      required this.colour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Opacity(
                opacity: 1,
                child: Image.asset(
                  imagePath,
                  semanticLabel: altText,
                  fit: BoxFit.cover,
                )),
          ),
          Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: isSelected
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.white),
              child: Text(
                overImageText,
                // style: const TextStyle(color: colour),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
