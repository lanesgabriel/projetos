import 'package:bankapp/components/box_card.dart';
import 'package:bankapp/components/color_dot.dart';
import 'package:bankapp/components/content_division.dart';
import 'package:bankapp/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ColorDot(
                            color: ThemeColors.recentActivity['income'],
                          ),
                        ),
                        const Text('Income'),
                      ],
                    ),
                    Text(
                      '\$6000.00',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ColorDot(
                            color: ThemeColors.recentActivity['outcome'],
                          ),
                        ),
                        const Text('Outcome'),
                      ],
                    ),
                    Text(
                      '\$3500.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Spending limit: \$1300.00'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.79,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
            "This month you spent \$900.45 on games. Maybe it's good to reduce this expense next month :)"),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Learn how!',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
