import 'package:flutter/material.dart';
import 'package:wall_pixel/app_constants.dart';

class MyWallCategories extends StatelessWidget {
  const MyWallCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFDBE7F0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Nature",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "36 wallpaper available",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      mainAxisExtent: 250),
                  itemCount: AppConstants.wallpapers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        AppConstants.wallpapers[index],
                        fit: BoxFit.cover,
                        height: 250,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
