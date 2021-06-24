import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/ui/heading.dart';

class AppTable extends StatelessWidget {
  final List<ServiceInfo>? serviceInfos;

  AppTable({required this.serviceInfos});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: IntrinsicColumnWidth(),
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
          ],
        ),
        ...serviceInfos
                ?.map(
                  (service) => TableRow(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                        child: Text(service.project.name,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                        child:
                            Text(service.env.name, textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                )
                .toList() ??
            [],
      ],
    );
  }
}
