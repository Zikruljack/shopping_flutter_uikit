import 'package:flutter/material.dart';
import 'package:shopping_flutter_uikit/components/widgets/custom_appbar.dart';
import 'package:shopping_flutter_uikit/core/constants/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: ColorConstants.ligthBackgroundColor,
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: ColorConstants.ligthBackgroundColor,
        ),
        height: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Alamat Section
            // Placeholder text for additional content
            Text('data')
          ],
        ),
      ),
    );
  }
}
