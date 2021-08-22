import 'package:flutter/material.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/create_contour_model.dart';
import 'package:gea/modules/forms/add_contour_form.dart';
import 'package:gea/protos/apps/contours/contours_v1.pb.dart';
import 'package:gea/ui/heading.dart';
import 'package:provider/provider.dart';

class ModalAddService extends StatelessWidget {
  final ContourInfo contour;
  final void Function(ServiceWithoutId) onSubmit;

  ModalAddService({required this.contour, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<CreateContourModel>(context, listen: true);

    return AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          child: Column(
            children: [
              Heading(text: "Add service", fontSize: FontSizes.h3),
              SizedBox(
                height: 16,
              ),
              ...model.keys
                  .map(
                    (key) => Column(
                      children: [
                        ProjectChooseField(rowKey: key),
                        EnvChooseField(rowKey: key),
                        ElevatedButton(
                          onPressed: () {
                            var services = model.getServices();

                            if (services.length > 0 && services[0] != null) {
                              onSubmit(services[0]!);
                              Navigator.of(context).pop();
                            }
                          },
                          child: Text("Add"),
                        )
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
