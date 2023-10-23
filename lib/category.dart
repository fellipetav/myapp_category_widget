import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final IconData widgetIcon;
  final Color wigetBgcolor;
  final String widgetText;

  const Category({
    Key? key,
    required this.widgetIcon,
    required this.wigetBgcolor,
    required this.widgetText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double categoryWidgetHeight = 100.0;
    const double categoryWidgetPadding = 8.0;
    const double iconSizedBoxSize = 60.0;
    const double paddingBetweenItemsWithinCategoryWidget = 16.0;
    const double textSizeWithinCategoryWidget = 24.0;

    // We use the widget Inwkell to wrap the Container widget
    //so as we can provide some effects when one tap on the Category widget
    return InkWell(
      onTap: () => print('I was tapped!'),
      splashColor: wigetBgcolor,
      highlightColor: wigetBgcolor,
      child: Container(
        height: categoryWidgetHeight,
        padding: const EdgeInsets.all(categoryWidgetPadding),
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(categoryWidgetHeight / 2)),
          color: wigetBgcolor,
        ),
        child: Row(
          children: [
            SizedBox(
              height: iconSizedBoxSize,
              width: iconSizedBoxSize,
              child: Icon(widgetIcon),
            ),
            const Padding(
              padding: EdgeInsets.all(paddingBetweenItemsWithinCategoryWidget),
            ),
            Text(
              widgetText,
              style: const TextStyle(fontSize: textSizeWithinCategoryWidget),
            ),
          ],
        ),
      ),
    );
  }
}
