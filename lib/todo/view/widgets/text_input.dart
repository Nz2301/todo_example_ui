import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.hintText,
    required this.lablelText,
    this.hintStyle,
    this.maxLine = 1,
    this.controller,
    this.readOnly = false,
    this.filled = true,
    this.onChanged,
    this.isOptions = false,
  });
  final String? hintText;
  final String lablelText;
  final TextStyle? hintStyle;
  final int maxLine;
  final TextEditingController? controller;
  final bool readOnly;
  final bool filled;
  final void Function(String)? onChanged;
  final bool isOptions;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lablelText,
            style: textTheme.bodyLarge,
          ),
          readOnly ? const SizedBox() : sizedBoxSmall,
          TextFormField(
            readOnly: readOnly,
            maxLines: maxLine,
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
              filled: filled,
              hintStyle: readOnly
                  ? textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                    )
                  : hintStyle ?? textTheme.labelMedium,
              contentPadding: readOnly
                  ? const EdgeInsets.only(bottom: 20)
                  : const EdgeInsets.all(defaultPadding),
              enabledBorder: readOnly
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: borderColor,
                        width: 1,
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        defaulBorderRadius,
                      ),
                      borderSide: BorderSide(
                        color: borderColor,
                        width: 0.1,
                      ),
                    ),
              focusedBorder: readOnly
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: borderColor,
                        width: 1,
                      ),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        defaulBorderRadius,
                      ),
                      borderSide: const BorderSide(
                        color: titleTextColor,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
