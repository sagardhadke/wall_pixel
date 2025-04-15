import 'package:flutter/material.dart';

class MyWallPreview extends StatefulWidget {
  String? imgUrl;
  MyWallPreview({super.key, this.imgUrl});

  @override
  State<MyWallPreview> createState() => _MyWallPreviewState();
}

class _MyWallPreviewState extends State<MyWallPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            widget.imgUrl ?? '',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 25,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.35),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Text(
                      "Info",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.35),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.download_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Color(0XFF4064F5),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.brush,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Text(
                      "Apply",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
