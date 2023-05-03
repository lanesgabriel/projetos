import 'package:bankapp/components/sections/account_actions.dart';
import 'package:bankapp/components/sections/account_points.dart';
import 'package:bankapp/components/sections/recent_activity.dart';
import 'package:bankapp/components/sections/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
        ],
      ),
    );
  }
}
