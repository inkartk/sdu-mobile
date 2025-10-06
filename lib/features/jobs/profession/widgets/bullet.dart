import 'package:flutter/material.dart';

class Bullet extends StatelessWidget {
  const Bullet({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  ',
              style:
                  TextStyle(fontSize: 18, height: 1.25, color: Colors.black)),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.35,
                    color: Colors.black87,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
