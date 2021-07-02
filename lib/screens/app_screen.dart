import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/apps_list_model.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/models/view_models/create_contour_model.dart';
import 'package:gea/modules/app_table.dart';
import 'package:gea/modules/modal_add_service.dart';
import 'package:gea/ui/buttons/button.dart';
import 'package:gea/ui/sidebar_right.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/screens/add_contour_screen.dart';
import 'package:gea/ui/buttons/accent_button.dart';
import 'package:gea/ui/heading.dart';
import 'package:gea/ui/vertical_divider.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  static const String route = '/app';
  final String appId;

  AppScreen({Key? key, this.appId = ""}) : super(key: key);

  onPress(BuildContext context) {
    Navigator.of(context).pushNamed('/app/$appId${AddContourScreen.route}');
  }

  @override
  Widget build(BuildContext context) {
    var model = context.watch<AppsListModel>();
    var app = model.item(id: appId);

    if (app == null) {
      return Container(
        child: Center(
          child: Text('No app with id: $appId'),
        ),
        color: Colors.white,
      );
    }

    return ChangeNotifierProvider<AppScreenModel>(
      create: (context) => AppScreenModel(app: app),
      child: _AppScreenContent(),
    );
  }
}

class _AppScreenContent extends StatelessWidget {
  onPress(BuildContext context, String appId) {
    Navigator.of(context).pushNamed('/app/$appId${AddContourScreen.route}');
  }

  onDeleteService({
    required BuildContext context,
    required Contour contour,
    required ServiceInfo service,
  }) {
    Provider.of<AppScreenModel>(context, listen: false)
        .deleteService(contour, service);
  }

  onChoose({
    required BuildContext context,
    required String contourName,
    required int index,
  }) {
    Provider.of<AppScreenModel>(context, listen: false)
        .chooseService(contourName, index);
  }

  onShowServiceForm(BuildContext context, Contour contour, String appId) {
    var model = Provider.of<AppScreenModel>(context, listen: false);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ChangeNotifierProvider<CreateContourModel>(
          create: (context) => CreateContourModel(appId: appId),
          child: ModalAddService(
            contour: contour,
            onSubmit: (ServiceInfo service) {
              model.addService(service, contour);
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AppScreenModel>();
    final app = model.app;
    final services = model.services;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: Heading(
                      text: app.name,
                    )),
                Column(
                  children: app.contour.map(
                    (contour) {
                      final service = services[contour.name];
                      return service != null
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ContourName(name: contour.name),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 6, top: 12),
                                  child: AppTable(
                                    contour: contour,
                                    serviceInfos: service,
                                    onDelete: onDeleteService,
                                    onChoose: onChoose,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 32),
                                  child: Button(
                                    onPress: () =>
                                        onShowServiceForm(context, contour, app.id),
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.textLight,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Text("Loading");
                    },
                  ).toList(),
                ),
                AccentButton(
                    onPress: () => onPress(context, app.id),
                    label: "Add contour"),
              ],
            ),
            color: Colors.white,
          ),
        ),
        Spacer(),
        GlobalDivider(),
        SidebarRight(
          child: model.chosenService != null
              ? ServiceDetails(
                  service: model.chosenService!,
                )
              : SizedBox(),
        ),
      ],
    );
  }
}

class ServiceDetails extends StatelessWidget {
  final ServiceInfo service;

  ServiceDetails({required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(
            text: "Project",
            fontSize: FontSizes.h4,
          ),
          ...service.project.info_.byIndex.asMap().entries.map(
            (entry) {
              var key = entry.value.toString();
              var value = service.project.getField(entry.key + 1);

              return Padding(
                padding: EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(
                      text: key,
                      fontSize: FontSizes.h5,
                    ),
                    SelectableText(value.toString())
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 24,
          ),
          Heading(
            text: "Environment",
            fontSize: FontSizes.h4,
          ),
          ...service.env.info_.byIndex.asMap().entries.map(
            (entry) {
              var key = entry.value.toString();
              var value = service.env.getField(entry.key + 1);

              return Padding(
                padding: EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(
                      text: key,
                      fontSize: FontSizes.h5,
                    ),
                    SelectableText(value.toString())
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ContourName extends StatefulWidget {
  final String name;

  ContourName({required this.name});

  @override
  _ContourNameState createState() {
    return _ContourNameState();
  }
}

class _ContourNameState extends State<ContourName> {
  final inputController = TextEditingController();
  bool isEditing = false;

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  onPress() {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        inputController.value = TextEditingValue(text: widget.name);
      }
    });
  }

  onSubmit(BuildContext context) async {
    await Provider.of<AppScreenModel>(context, listen: false)
        .renameContour(widget.name, inputController.text);
    setState(() {
      isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    inputController.value = TextEditingValue(text: widget.name);

    return GestureDetector(
      onTap: onPress,
      child: isEditing
          ? Row(children: [
              SizedBox(
                  width: 200,
                  child: TextFormField(controller: inputController)),
              Container(
                width: 40,
                child: IconButton(
                  onPressed: () => onSubmit(context),
                  icon: Icon(Icons.check),
                  iconSize: 20,
                  hoverColor: AppColors.darkContrast,
                  splashColor: AppColors.darkContrast,
                  splashRadius: 20,
                ),
              )
            ])
          : Heading(fontSize: FontSizes.h4, text: widget.name),
    );
  }
}
