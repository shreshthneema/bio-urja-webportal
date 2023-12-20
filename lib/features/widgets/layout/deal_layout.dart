import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webportal_biourja_flutter/features/deal/bloc/deal_bloc.dart';
import 'package:webportal_biourja_flutter/features/deal/repository/deal_repository.dart';
import 'package:webportal_biourja_flutter/features/widgets/index.dart';

class DealLayout extends StatelessWidget {
  final Widget child;
  const DealLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: BlocProvider(
        create: (_) => DealBloc(dealService: DealRepository()),
        child: child,
      ),
    );
  }
}
