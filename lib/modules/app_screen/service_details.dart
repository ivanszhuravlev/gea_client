import 'package:flutter/material.dart';
import 'package:gea/constants/app_colors.dart';
import 'package:gea/models/fonts.dart';
import 'package:gea/models/view_models/app_screen_model.dart';
import 'package:gea/ui/buttons/button.dart';
import 'package:gea/ui/heading.dart';
import 'package:gea/ui/sidebar_right.dart';

class ServiceDetails extends StatefulWidget {
  final ServiceInfo? service;
  final void Function() onClose;

  ServiceDetails({required this.service, required this.onClose});
  @override
  _ServiceDetailsState createState() {
    return _ServiceDetailsState();
  }
}

class _ServiceDetailsState extends State<ServiceDetails> {
  var isShown = false;

  @override
  void didUpdateWidget(oldWidget) {
    if (oldWidget.service == null && widget.service != null) {
      setState(() {
        isShown = true;
      });
    }
  }

  onEnd() {
    if (!isShown) {
      widget.onClose();
    }
  }

  onClose() {
    setState(() {
      isShown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = isShown ? 360.0 : 0.0;
    double opacity = isShown ? 1 : 0;

    return AnimatedContainer(
      onEnd: onEnd,
      width: width,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      child: OverflowBox(
        child: SidebarRight(
          child: widget.service != null
              ? AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 300),
                  child: _ServiceDetailsContent(
                    service: widget.service!,
                    onClose: onClose,
                  ),
                )
              : SizedBox(),
        ),
      ),
    );
  }
}

class _ServiceDetailsContent extends StatelessWidget {
  final ServiceInfo service;
  final void Function() onClose;

  _ServiceDetailsContent({required this.service, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Heading(
                text: "Project",
                fontSize: FontSizes.h4,
              ),
              Spacer(),
              Button(
                onPress: onClose,
                backgroundColor: AppColors.background,
                child: Icon(
                  Icons.close,
                  color: AppColors.darkContrast,
                  size: 20,
                ),
              )
            ],
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
