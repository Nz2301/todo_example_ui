import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';

class DropdownTextField extends StatefulWidget {
  const DropdownTextField({
    super.key,
    required this.options,
    required this.onChanged,
    required this.lablelText,
    this.dropdownValue,
  });
  final List<String> options;
  final void Function(String?)? onChanged;
  final String lablelText;
  final String? dropdownValue;

  @override
  // ignore: library_private_types_in_public_api
  _DropdownTextFieldState createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lablelText,
          style: textTheme.bodyLarge,
        ),
        sizedBoxSmall,
        DropdownButtonFormField<String>(
          value: widget.dropdownValue,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                defaulBorderRadius,
              ),
              borderSide: const BorderSide(
                color: titleTextColor,
                width: 0.1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                defaulBorderRadius,
              ),
              borderSide: BorderSide(
                color: borderColor,
                width: 0.1,
              ),
            ),
          ),
          onChanged: widget.onChanged,
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: textTheme.bodyMedium,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
