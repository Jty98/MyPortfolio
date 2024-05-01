import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Components/text_widget.dart';
import 'package:my_portfolio_web/VM/resonse_size.dart';

class ProjectWidget extends StatelessWidget {
  final String titleText;
  final String logoImage;
  final String mockupImage;
  final String introduction;
  const ProjectWidget(
      {super.key,
      required this.titleText,
      required this.logoImage,
      required this.mockupImage,
      required this.introduction});

  @override
  Widget build(BuildContext context) {
    TextWidget textWidget = TextWidget();
    ResponseSize responseSize = ResponseSize();

    return SizedBox(
      width: responseSize.resizeValue(
          context: context,
          defaultValue: 460,
          mobileValue: 400,
          tabletValue: 350),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    logoImage,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  textWidget.showTextWidget(
                      context: context,
                      text: titleText,
                      weight: FontWeight.bold,
                      fontColor: Theme.of(context).colorScheme.tertiary,
                      fontSize: 20),
                ],
              ),
            ),
            textWidget.showDivider(context: context, paddingSize: 2),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                mockupImage,
                fit: BoxFit.fill,
                width: 320,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: textWidget.showTextWidget(
                  context: context,
                  text: introduction,
                  weight: FontWeight.bold,
                  fontColor: Theme.of(context).colorScheme.tertiary,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
    // });
  }
}