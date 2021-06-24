import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/view_models/create_contour_model.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/modules/forms/add_contour_form.dart';
import 'package:gea/ui/heading.dart';
import 'package:provider/provider.dart';

class AddContourScreen extends StatelessWidget {
  static String route = '/add-contour';
  final String appId;

  AddContourScreen({Key? key, this.appId = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contourModel = Provider.of<CreateContourModel>(context, listen: false);

    contourModel.addApp(appId);

    return Container(
      alignment: Alignment.center,
      child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            width: 500.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading(text: "Add new contour"),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 12),
                  child: Text(
                    "It will represent an 'environment' and include several projects",
                    style: TextStyle(
                        color: AppColors.darkCaption,
                        fontSize: FontSizes.caption),
                  ),
                ),
                ChangeNotifierProvider<CreateContourModel>(
                  create: (context) => CreateContourModel(),
                  child: AddContourForm(),
                ),
              ],
            ),
          )),
    );
  }
}
