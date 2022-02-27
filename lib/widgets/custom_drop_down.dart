import 'package:flutter/material.dart';
import 'package:ui_challenge/utils/theme/app_theme.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    Key? key,
    this.width,
    required this.hint,
    this.listitems,
    this.listWidgets,
  }) : super(key: key);
  final List<String>? listitems;
  final List<Widget>? listWidgets;
  final Widget hint;
  final double? width;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

//todo: make changes to accept Widgets instead of strings
class _CustomDropDownState extends State<CustomDropDown> {
  String? value;
  Widget? widgetValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 330,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5EBF0), width: 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: widget.listWidgets == null && widget.listitems != null
            ? buildStringDropDownButton()
            : buildWidgetDropDownButton(),
      ),
    );
  }

  DropdownButton<String> buildStringDropDownButton() {
    return DropdownButton<String>(
      iconSize: 24,
      icon: Icon(
        Icons.arrow_drop_down_sharp,
        color: Theme.of(context).iconTheme.color,
      ),
      isExpanded: true,
      value: value,
      style: Theme.of(context).textTheme.bodyText1,
      hint: widget.hint,
      items: widget.listitems!.map(buildMenuItem).toList(),
      onChanged: (selectedItem) => setState(
        () {
          value = selectedItem;
        },
      ),
    );
  }

  DropdownButton<Widget> buildWidgetDropDownButton() {
    return DropdownButton<Widget>(
      iconSize: 24,
      icon: Icon(
        Icons.arrow_drop_down_sharp,
        color: Theme.of(context).iconTheme.color,
      ),
      isExpanded: true,
      value: widgetValue,
      style: Theme.of(context).textTheme.bodyText1,
      hint: widget.hint,
      items: widget.listWidgets!.map(buildWidgetItem).toList(),
      onChanged: (selectedItem) => setState(
        () {
          widgetValue = selectedItem;
        },
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: AppTheme.lightTheme.textTheme.headline2,
        ),
      );
  DropdownMenuItem<Widget> buildWidgetItem(Widget customWidget) =>
      DropdownMenuItem(
        value: customWidget,
        child: customWidget,
      );
}
