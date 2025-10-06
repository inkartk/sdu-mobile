import 'package:flutter/material.dart';
import 'package:sdu/features/jobs/jobs/widgets/paystack_card.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

class FactBlock extends StatelessWidget {
  const FactBlock({
    super.key,
    required this.title,
    this.childText,
    this.chipText,
  });

  final String title;
  final String? childText;
  final String? chipText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.bodyMediumRegular),
        const SizedBox(height: 8),
        if (chipText != null)
          MintCard(text: chipText!)
        else
          Text(
            childText ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }
}
