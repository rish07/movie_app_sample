import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenskart_test/home/repository/home_repository.dart';

class RepositoryInjection extends StatelessWidget {
  const RepositoryInjection({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => HomeRepo(),
        ),
      ],
      child: child,
    );
  }
}
