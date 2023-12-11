import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String buttonText;
  final IconData? iconData;
  final VoidCallback? buttontapped;

  const MyButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.iconData,
    this.buttontapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(3.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: color,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconData != null)
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Icon(
                        iconData,
                        color: textColor,
                        size: 26,
                      ),
                    ),
                  Text(
                    buttonText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
