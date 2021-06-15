import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/modules/forms/add_app_form.dart';
import 'package:gea/modules/forms/add_contour_form.dart';

class AddContourScreen extends StatelessWidget {
  static String route = '/add-contour';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            width: 500.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add new contour",
                  style: TextStyle(
                      color: AppColors.darkContrast, fontSize: FontSizes.h1, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 12),
                  child: Text(
                    "It will represent an 'environment' and include several projects",
                    style: TextStyle(
                        color: AppColors.darkCaption, fontSize: FontSizes.caption),
                  ),
                ),
                AddContourForm(),
              ],
            ),
          )),
    );
  }
}
