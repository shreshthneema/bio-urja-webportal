import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/features/widgets/normal_textfield.dart';
import 'package:webportal_biourja_flutter/utils/app_assets.dart';
import 'package:webportal_biourja_flutter/utils/extensions/build_context_ext.dart';

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
                margin: EdgeInsets.only(right: 20),
                width: 200,
                child: TextField(
                  style: context.textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
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
