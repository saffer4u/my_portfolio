import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: const Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.wysiwyg_sharp),
                  label: const Text('')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_outlined),
                  label: const Text('')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_outlined),
                  label: const Text('')),
            ],
          ),
        ),
      ],
    );
  }
}
