import 'package:flutter/material.dart';
import 'package:shopping_flutter_uikit/components/widgets/custom_appbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: Text('Dashboard')),
      body: Center(child: Text('Dashboard')),
    );
  }
}
