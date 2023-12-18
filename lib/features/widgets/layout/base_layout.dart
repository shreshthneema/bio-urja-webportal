import 'package:flutter/material.dart';
import '../../../utils/index.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          AppAssets.companyLogo,
          width: 90,
          color: context.colorScheme.onPrimary,
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 200,
                child: TextField(
                  style: context.textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    hintText: 'Search',
                    filled: true,
                    hintStyle: context.textTheme.labelMedium,
                    fillColor: context.colorScheme.onPrimary,
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: context.colorScheme.primary,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          width: 0, color: context.colorScheme.onPrimary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          width: 0, color: context.colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: child,
      ),
    );
  }
}
