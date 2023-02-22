import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenskart_test/home/cubit/home_cubit.dart';
import 'package:lenskart_test/home/repository/home_repository.dart';

class BlocInjection extends StatelessWidget {
  const BlocInjection({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(
            RepositoryProvider.of<HomeRepo>(context),
          ),
        ),
      ],
      child: child,
    );
  }
}
