import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.color,
    this.isBtn = false,
    this.isTitle = false,
  });
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Color? color;
  final void Function()? onTap;
  final bool isBtn;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isBtn
          ? Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaulBorderRadius),
                color: color ?? titleTextColor,
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          : Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                gradient: color == null ? linearGradient : null,
                color: color,
                borderRadius: BorderRadius.circular(defaulBorderRadius),
              ),
              child: ListTile(
                contentPadding: isTitle
                    ? EdgeInsets.zero
                    : const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                leading: leading,
                title: title,
                subtitle: subtitle,
                trailing: trailing ??
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: titleTextColor,
                    ),
              ),
            ),
    );
  }
}
