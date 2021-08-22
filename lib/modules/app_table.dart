import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/protos/apps/contours/contours_v1.pb.dart';
import 'package:gea/ui/heading.dart';

class AppTable extends StatelessWidget {
  final List<ServiceInfoFull> serviceInfos;
  final OnDelete onDelete;
  final ContourInfo contour;
  final OnChoose onChoose;

  AppTable({
    required this.contour,
    required this.serviceInfos,
    required this.onDelete,
    required this.onChoose,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Heading(
              fontSize: FontSizes.h5,
              text: 'Project',
              textAlign: TextAlign.center),
        ),
        DataColumn(
          label: Heading(
              fontSize: FontSizes.h5,
              text: 'Environment',
              textAlign: TextAlign.center),
        ),
        DataColumn(
            label: SizedBox(width: 40),
        ),
      ],
      rows: [
        ...serviceInfos.asMap().entries.map(
          (entry) {
            final int index = entry.key;
            final ServiceInfoFull service = entry.value;

            return DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(service.project.name),
                  onTap: () => onChoose(
                    context: context,
                    contourName: contour.name,
                    index: index,
                  ),
                ),
                DataCell(
                  Text(service.env.name),
                  onTap: () => onChoose(
                    context: context,
                    contourName: contour.name,
                    index: index,
                  ),
                ),
                DataCell(
                  DeleteButton(
                    onPressed: () => onDelete(
                      context: context,
                      contour: contour,
                      service: service,
                    ),
                  ),
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
        hoverColor: AppColors.textLight,
        splashColor: AppColors.border,
        splashRadius: 20,
      ),
    );
  }
}

typedef void OnDelete({
  required BuildContext context,
  required ContourInfo contour,
  required ServiceInfoFull service,
});

typedef void OnChoose({
  required BuildContext context,
  required String contourName,
  required int index,
});
