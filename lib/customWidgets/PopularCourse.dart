import 'package:career_path_recommendation/assets/colors/colors.dart';
import 'package:career_path_recommendation/assets/images.dart';
import 'package:flutter/material.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(14),
      width: MediaQuery.of(context).size.width * 0.8,
      height: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainBackground,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image(
              errorBuilder:
                  (context, error, stackTrace) => Icon(Icons.broken_image),
              image: NetworkImage(
                'https://bigdataanalyticsnews.com/wp-content/uploads/2022/12/what-is-data-science.jpg',
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.star_border_outlined, color: AppColors.iconColors),
              SizedBox(width: 5),
              Text("5.0", style: TextStyle(color: Colors.white)),
              Text(" (1,5K)", style: TextStyle(color: Colors.white)),
            ],
          ),
          Text(
            "Every Day learning Build: Your own website.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
