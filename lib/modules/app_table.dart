import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/ui/heading.dart';

class AppTable extends StatelessWidget {
  final List<ServiceInfo> serviceInfos;
  final OnDelete onDelete;
  final Contour contour;
  final OnChoose onChoose;

  AppTable({
    required this.contour,
    required this.serviceInfos,
    required this.onDelete,
    required this.onChoose,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: IntrinsicColumnWidth(),
        2: FixedColumnWidth(50),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
              color: AppColors.accentLighter,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: Heading(
                  fontSize: FontSizes.h5,
                  text: 'Project',
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: Heading(
                  fontSize: FontSizes.h5,
                  text: 'Environment',
                  textAlign: TextAlign.center),
            ),
            SizedBox(width: 40)
          ],
        ),
        ...serviceInfos.asMap().entries.map(
          (entry) {
            final int index = entry.key;
            final ServiceInfo service = entry.value;

            return TableRow(
              children: <Widget>[
                GestureDetector(
                    onTap: () => onChoose(
                        context: context,
                        contourName: contour.name,
                        index: index),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                      child: Text(service.project.name,
                          textAlign: TextAlign.center),
                    )),
                GestureDetector(
                  onTap: () => onChoose(
                      context: context,
                      contourName: contour.name,
                      index: index),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                    child: Text(service.env.name, textAlign: TextAlign.center),
                  ),
                ),
                DeleteButton(
                  onPressed: () => onDelete(
                      context: context, contour: contour, service: service),
                )
              ],
            );
          },
        ).toList(),
      ],
    );
  }
}

class DeleteButton extends StatelessWidget {
  final void Function() onPressed;

  DeleteButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.delete),
        iconSize: 20,
        hoverColor: AppColors.darkContrast,
        splashColor: AppColors.darkContrast,
        splashRadius: 20,
      ),
    );
  }
}

typedef void OnDelete({
  required BuildContext context,
  required Contour contour,
  required ServiceInfo service,
});

typedef void OnChoose({
  required BuildContext context,
  required String contourName,
  required int index,
});