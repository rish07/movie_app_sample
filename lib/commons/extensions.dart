import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenskart_test/home/cubit/home_cubit.dart';

extension BuildContextX on BuildContext {
  HomeCubit get homeCubit => read<HomeCubit>();
}
