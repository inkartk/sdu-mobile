import 'package:flutter/material.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.child,
    this.bottomRadius,
  });

  final String title;
  final Widget child;
  final Radius? bottomRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: bottomRadius != null
            ? BorderRadius.vertical(bottom: bottomRadius!)
            : null,
      ),
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: context.bodyMediumMedium?.copyWith(
                color: Color(0xFF434545),
              )),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}
